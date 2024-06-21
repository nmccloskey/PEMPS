import sys
import pytest
from copy import deepcopy as dc
from unittest.mock import Mock

sys.path.append('C:\\Users\\tuf61393\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')

def test_trace_lines():
    from PEMPS import Tree, Node

    # Mocking the Node object with necessary attributes
    class MockNode:
        def __init__(self, num, type='external', external_index=0, ancestors=None):
            self.num = num
            self.type = type
            self.external_index = external_index
            self.ancestors = ancestors if ancestors is not None else []
            self.data_labels = ['fit', 'flux1', 'flux2']
            self.data = {label: [i] for i, label in enumerate(self.data_labels)}
            self.cum_length = 0
            self.length = 0
            self.fix_count = 0
            self.mut_count = 0
            self.rev_count = 0
            self.gens = 0
            self.model = None

    # Create an instance of Tree with mock data
    tree = Tree()
    tree.use_basico_method = False
    tree.data_labels = ['fit', 'flux1', 'flux2']
    
    # Create a list of mock nodes with different external indices and ancestors
    tree.branch_list = [
        MockNode(1, 'internal', external_index=2, ancestors=[1]),
        MockNode(2, 'external', external_index=1, ancestors=[1, 2]),
        MockNode(3, 'external', external_index=2, ancestors=[1, 3]),
    ]
    tree.branch_dict = {node.num: node for node in tree.branch_list}
    
    # Test case 1: use_basico_method is True
    tree.use_basico_method = True
    tree.trace_lines()
    for node in tree.branch_list:
        assert node.model is None, "Node model should be None when use_basico_method is True"

    # Test case 2: use_basico_method is False
    tree.use_basico_method = False
    tree.trace_lines()

    # Check that line_list is sorted by external index and contains only external nodes
    assert len(tree.line_list) == 2, "line_list should contain 2 nodes"
    assert tree.line_list[0].external_index == 1, "First node in line_list should have external_index 1"
    assert tree.line_list[1].external_index == 2, "Second node in line_list should have external_index 2"

    # Check concatenation of data and other properties
    for node in tree.line_list:
        if node.num == 2:
            assert node.length == node.cum_length, "Length does not match cumulative length for node 2"
        if node.num == 3:
            assert node.length == node.cum_length, "Length does not match cumulative length for node 3"

# Run the tests
if __name__ == "__main__":
    pytest.main()
