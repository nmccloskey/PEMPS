import sys
import pytest
import numpy as np

sys.path.append('C:\\Users\\tuf61393\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')

def test_find_gens_per_branch():
    from PEMPS import Tree, Node

    # Mocking the Node object with necessary attributes
    class MockNode:
        def __init__(self, length, cum_length=0):
            self.length = length
            self.cum_length = cum_length
            self.gens = None

    # Create an instance of Tree with mock data
    tree = Tree()
    tree.branch_length_type = 'subs per site'
    tree.branch_list = [MockNode(0)] + [MockNode(0.1), MockNode(0.2), MockNode(0.3)]
    tree.branch_dict = {0: MockNode(0)}
    tree.branch_dict[0].two_perc_rule_gen_thresh = 50

    # Test case 1: sim_gens is 0
    tree.sim_gens = 0
    tree.find_gens_per_branch()
    
    expected_mult = 100
    expected_gens = [round(tree.branch_dict[0].two_perc_rule_gen_thresh * node.length * expected_mult) for node in tree.branch_list[1:]]
    
    for node, expected_gen in zip(tree.branch_list[1:], expected_gens):
        assert node.gens == expected_gen, f"Generation number for node with length {node.length} does not match expected value"

    # Test case 2: sim_gens is non-zero
    tree.sim_gens = 1000
    for node, cum_length in zip(tree.branch_list[1:], [0.1, 0.3, 0.6]):
        node.cum_length = cum_length
    max_cum_length = max(node.cum_length for node in tree.branch_list[1:])
    
    tree.find_gens_per_branch()
    
    expected_ratio = tree.sim_gens / max_cum_length
    expected_gens = [round(expected_ratio * node.length) for node in tree.branch_list[1:]]
    
    assert tree.GEN_TO_LENGTH_RATIO == expected_ratio, "GEN_TO_LENGTH_RATIO does not match expected value"
    
    for node, expected_gen in zip(tree.branch_list[1:], expected_gens):
        assert node.gens == expected_gen, f"Generation number for node with length {node.length} does not match expected value"

# Run the tests
if __name__ == "__main__":
    pytest.main()
