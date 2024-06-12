import sys
import pytest
import os
import pandas as pd
import re
from unittest.mock import Mock, patch, mock_open, MagicMock
import dendropy

sys.path.append('C:\\Users\\tuf61393\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')

def test_find_branches():
    from PEMPS_ import Tree, Node

    # Mocking the Node object with necessary attributes
    class MockNode:
        def __init__(self):
            self.name = ""
            self.type = ""
            self.length = 0.0
            self.external_index = 0
            self.ancestors = []
            self.descendants = []
            self.parent = None
            self.sister = None
            self.children = []
            self.popsize = 0
            self.cum_length = 0.0

    # Create an instance of Tree with mock data
    tree = Tree()
    tree.newick_filename = 'mock_newick.nwk'
    tree.branch_list = []
    tree.popsizes = [1000]

    exp_path = '/mock/path/'

    newick_content = "(A:0.1,B:0.2,(C:0.3,D:0.4):0.5);"
    ascii_tree_content = "Mock ASCII Tree"

    with patch('dendropy.Tree.get') as mock_get, \
         patch('builtins.open', mock_open(read_data=newick_content)) as mock_file, \
         patch('os.getcwd', return_value='/current/working/directory'), \
         patch('dendropy.Tree.as_ascii_plot', return_value=ascii_tree_content), \
         patch('pandas.DataFrame.to_excel') as mock_to_excel:
        
        mock_tree = MagicMock()
        mock_get.return_value = mock_tree
        
        tree.find_branches(exp_path)

        # Verify some of the logic (like adding nodes and setting properties)
        assert len(tree.branch_list) > 0, "Branch list should not be empty"
        assert tree.branch_list[0].type == 'root', "First node should be root"
        assert tree.branch_list[0].popsize == 1000, "Default population size should be 1000"

# Run the tests
if __name__ == "__main__":
    pytest.main()
