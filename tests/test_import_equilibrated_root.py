import sys
import pytest
import os
import pandas as pd
from unittest.mock import Mock, patch, mock_open

sys.path.append('C:\\Users\\tuf61393\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')

def test_import_equilibrated_root():
    from PEMPS import Tree, Node

    # Mocking the Node object with necessary attributes
    class MockNode:
        def __init__(self):
            self.gens = 0
            self.imp_fix_count = 0
            self.fix_count = 0
            self.mut_count = 0
            self.rev_count = 0
            self.popfit = 0.0
            self.two_perc_rule_gen_thresh = 0
            self.data = {}

    # Create an instance of Tree with mock data
    tree = Tree()
    tree.branch_dict = {0: MockNode()}
    tree.selection_flux_names = ['flux1', 'flux2', 'flux3']
    tree.imp_eq_filename = 'mock_imp_eq'

    eqtxtfile_content = """
    no. generations: 1000
    no. fixations: 10
    no. mutations: 20
    no. reversals: 5
    final fitness: 1.234
    flux scaler dict: 0.5 1.5 2.5
    generations per million years: 1000000
    """

    eqddfr_data = {
        'fit': [0.1],
        'flux1': [1.0],
        'flux2': [1.5],
        'flux3': [2.0]
    }
    eqddfr_df = pd.DataFrame(eqddfr_data)

    with patch('builtins.open', mock_open(read_data=eqtxtfile_content)), \
         patch('pandas.read_excel', return_value=eqddfr_df), \
         patch('os.getcwd', return_value='/mock/path'):

        tree.import_equilibrated_root()

        node = tree.branch_dict[0]

        assert node.gens == 1000, "Generations do not match expected value"
        assert node.imp_fix_count == 10, "Fixations do not match expected value"
        assert node.fix_count == 10, "Fixations do not match expected value"
        assert node.mut_count == 20, "Mutations do not match expected value"
        assert node.rev_count == 5, "Reversals do not match expected value"
        assert node.popfit == 1.234, "Final fitness does not match expected value"
        assert node.two_perc_rule_gen_thresh == 1000000, "Generations per million years do not match expected value"

        expected_flux_prop_dict = {'flux1': 0.5, 'flux2': 1.5, 'flux3': 2.5}
        assert tree.flux_prop_dict == expected_flux_prop_dict, "Flux proportion dictionary does not match expected value"

        expected_data = eqddfr_data
        assert node.data == expected_data, "Data dictionary does not match expected value"

# Run the tests
if __name__ == "__main__":
    pytest.main()
