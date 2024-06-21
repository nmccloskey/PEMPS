import sys
import pytest
import re
from copy import deepcopy as dc
from unittest.mock import patch, mock_open, MagicMock

sys.path.append('C:\\Users\\tuf61393\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')

def test_update_cps():
    from PEMPS import Node, Tree

    # Mocking the Tree object with necessary attributes
    class MockTree:
        def __init__(self):
            self.use_basico_method = False
            self.spec_labels = ['spec1', 'spec2']
            self.copasi_filename = 'mock_copasi_file.cps'
        
        def extract_parname(self, param):
            return param

    # Create an instance of Node with mock data
    node = Node(MockTree())
    node.init_conds = [1.0, 2.0, 3.0]
    node.kin_par_dict = {
        'rxn1_kin1': 0.1,
        'rxn1_kin2': 0.2,
        'rxn2_kin1': 0.3
    }
    node.glob_par_dict = {
        'global1': 1.0
    }
    node.spec_concs = [0.5, 1.5]
    node.ind_par_dict = {
        'ind1': 2.0
    }
    node.mutants = ['ind1']
    node.model = """
    <COPASI>
        <ListOfReactions>
            <Reaction key="rxn1">
                <KineticLaw>
                    <Parameter name="kin1" value="0.5"/>
                    <Parameter name="kin2" value="0.6"/>
                </KineticLaw>
            </Reaction>
            <Reaction key="rxn2">
                <KineticLaw>
                    <Parameter name="kin1" value="0.7"/>
                </KineticLaw>
            </Reaction>
        </ListOfReactions>
        <Metabolites>
            <Metabolite initialConcentration="1.0"/>
            <Metabolite initialConcentration="2.0"/>
        </Metabolites>
    </COPASI>
    """
    
    
    with patch('builtins.open', mock_open()) as mock_file, \
         patch('basico.set_parameters'), \
         patch('basico.set_species'):
        
        node.update_cps()

        # Check if the model string was updated correctly
        expected_model = """
    <COPASI>
        <ListOfReactions>
            <Reaction key="rxn1">
                <KineticLaw>
                    <Parameter name="kin1" value="0.1"/>
                    <Parameter name="kin2" value="0.2"/>
                </KineticLaw>
            </Reaction>
            <Reaction key="rxn2">
                <KineticLaw>
                    <Parameter name="kin1" value="0.3"/>
                </KineticLaw>
            </Reaction>
        </ListOfReactions>
        <Metabolites>
            <Metabolite initialConcentration="1.0"/>
            <Metabolite initialConcentration="2.0"/>
        </Metabolites>
    </COPASI>
    """
        mock_file().write.assert_called_with(expected_model)

# Run the tests
if __name__ == "__main__":
    pytest.main()
