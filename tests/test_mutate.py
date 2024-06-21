import sys
import pytest
import numpy as np
import random
from unittest.mock import Mock, patch

sys.path.append('C:\\Users\\tuf61393\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')

def test_mutate():
    from PEMPS import Node, Tree

    # Mocking the Tree object with necessary attributes
    class MockTree:
        def __init__(self):
            self.kin_mut_par_selection = []
            self.no_mut_list = []
            self.par_prop_counts = {}
            self.glob_to_kin_dict = {}
            self.binding_constants = []
            self.mut_change = 0.01
            self.implement_Haldane = 'N'
            self.Haldane_rxn_dicts = {}
            self.Haldane_params = []
            self.keq_dict = {}
            self.names = ['global1', 'global2']
        
        def extract_parname(self, param):
            return param

    # Create an instance of Node with mock data
    tree = MockTree()
    node = Node(tree)
    node.glob_par_dict = {
        'global1': 1.0,
        'global2': 2.0
    }
    node.kin_par_dict = {
        'kin1': 0.5,
        'kin2': 0.6
    }
    node.ind_par_dict = {
        'ind1': 0.7
    }
    node.init_conds = [1.0, 2.0]
    node.spec_concs = [0.5, 1.5]
    node.mutants = []

    # Mocking numpy and random methods
    with patch('numpy.random.poisson', return_value=1), \
         patch('numpy.random.normal', return_value=0.01), \
         patch('random.choice', side_effect=lambda x: x[0]):

        node.mutate()

        # Assertions to verify mutations
        assert 'global1' in node.mutants, "global1 should be mutated"
        assert node.glob_par_dict['global1'] != 1.0, "global1 value should be mutated"
        assert 'kin1' in node.mutants, "kin1 should be mutated"
        assert node.kin_par_dict['kin1'] != 0.5, "kin1 value should be mutated"

        # Check for specific values after mutation
        expected_global1 = 1.0 * (1 + 0.0201)
        expected_kin1 = 0.51005

        assert node.glob_par_dict['global1'] == expected_global1, f"global1 value should be {expected_global1}"
        assert node.kin_par_dict['kin1'] == expected_kin1, f"kin1 value should be {expected_kin1}"

# Run the tests
if __name__ == "__main__":
    pytest.main()
