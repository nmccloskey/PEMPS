import sys
import pytest
import pandas as pd
import numpy as np
import seaborn as sns
import matplotlib.pyplot as plt
from unittest.mock import patch, MagicMock

sys.path.append('C:\\Users\\tuf61393\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')

def test_analyze_sims():
    from PEMPS_ import Tree

    # Mocking the Tree object with necessary attributes
    tree = Tree()
    tree.num_sims = 10
    tree.write_log_file = False
    tree.mostvals = ['fit', 'flux1', 'flux2']
    
    # Mocking dataframes for branch_dfs and line_dfs
    nrows, ncols = 5, 3
    data = np.random.rand(nrows, ncols)
    index = [f'Row{i}' for i in range(nrows)]
    columns = tree.mostvals
    df = pd.DataFrame(data, index=index, columns=columns)
    tree.branch_dfs = [df] * tree.num_sims
    tree.line_dfs = [df] * tree.num_sims
    
    exp_path = '/mock/path/'

    with patch('os.getcwd', return_value='/current/working/directory'), \
         patch('pandas.DataFrame.to_excel') as mock_to_excel, \
         patch('seaborn.heatmap'), \
         patch('matplotlib.pyplot.savefig'), \
         patch('matplotlib.pyplot.clf'), \
         patch('matplotlib.pyplot.close'):
        
        tree.analyze_sims(exp_path)

        # Check DataFrame to_excel calls
        for itype in ['branch', 'line']:
            mock_to_excel.assert_any_call(f'/current/working/directory{exp_path}{itype}_avgpdiffs_{tree.num_sims}_sims.xlsx')
            mock_to_excel.assert_any_call(f'/current/working/directory{exp_path}{itype}_varpdiffs_{tree.num_sims}_sims.xlsx')
        
        # Check heatmap generation calls
        assert sns.heatmap.called, "Heatmap should be generated"
        assert plt.savefig.called, "Heatmap should be saved"
        assert plt.clf.called, "plt.clf should be called to clear the plot"
        assert plt.close.called, "plt.close should be called to close the plot"

        # Verify the print message
        with patch('builtins.print') as mock_print:
            tree.analyze_sims(exp_path)
            mock_print.assert_called_with('\n10 simulations analyzed')

# Run the tests
if __name__ == "__main__":
    pytest.main()
