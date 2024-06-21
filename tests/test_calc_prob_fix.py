import sys
import pytest
import numpy as np

sys.path.append('C:\\Users\\tuf61393\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')

def test_calc_prob_fix():
    from PEMPS import Node, Tree

    # Mocking the Tree object with necessary attributes
    tree = Tree()
    tree.ploidy = 2
    tree.popsize = 100

    # Create an instance of Node with mock data
    node = Node(tree)
    node.popfit = 1.2  # Assuming the population fitness after mutation

    # Test case 1: Normal scenario
    old_popfit = 1.0
    sel_coeff, prob_fix, fixation = node.calc_prob_fix(old_popfit)
    expected_sel_coeff = node.popfit / old_popfit - 1
    if abs(expected_sel_coeff) <= 1e-18:
        expected_prob_fix = 0.5
    elif expected_sel_coeff <= -0.25:
        expected_prob_fix = 0
    else:
        expected_prob_fix = (1 - np.e**(-2 * tree.ploidy * tree.popsize * expected_sel_coeff * 0.5)) / \
                            (1 - np.e**(-2 * tree.ploidy * tree.popsize * expected_sel_coeff))
    assert sel_coeff == expected_sel_coeff, "Selection coefficient does not match expected value"
    assert prob_fix == expected_prob_fix, "Probability of fixation does not match expected value"
    assert isinstance(fixation, bool), "Fixation result should be a boolean"

    # Test case 2: Selection coefficient is too small
    node.popfit = 1.0 + 1e-19
    old_popfit = 1.0
    sel_coeff, prob_fix, fixation = node.calc_prob_fix(old_popfit)
    assert prob_fix == 0.5, "Probability of fixation should be 0.5 for very small selection coefficient"

    # Test case 3: Selection coefficient is too negative
    node.popfit = 0.7
    old_popfit = 1.0
    sel_coeff, prob_fix, fixation = node.calc_prob_fix(old_popfit)
    assert prob_fix == 0, "Probability of fixation should be 0 for very negative selection coefficient"

    # Test case 4: Complex selection coefficient
    node.popfit = 1 + 1j  # Intentionally making popfit complex
    old_popfit = 1.0
    sel_coeff, prob_fix, fixation = node.calc_prob_fix(old_popfit)
    assert 'Csc' in node.errors, "Complex selection coefficient should trigger reset and add 'Csc' to errors"
    assert node.reset, "Reset should be triggered due to complex selection coefficient"
    assert prob_fix == 0, "Probability of fixation should be 0 when reset is triggered"

# Run the tests
if __name__ == "__main__":
    pytest.main()
