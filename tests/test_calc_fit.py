import sys
import pytest
import numpy as np
sys.path.append('C:\\Users\\tuf61393\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
import pytest

def test_calc_fit():
    from PEMPS import Node, Tree
    tree = Tree()
    tree.selection_flux_names = ['flux1', 'flux2', 'flux3']
    tree.fit_weights = [0.1, 0.3, 0.6]
    tree.flux_prop_dict = {'flux1': 1.0, 'flux2': 2.0, 'flux3': 3.0}

    node = Node(tree)
    node.selection_flux_dict = {'flux1': 1.0, 'flux2': -1.0, 'flux3': 3.0}
    
    # Call the calc_fit method
    norm_fits = node.calc_fit()
    
    # Check the returned normalized fitnesses
    prop_fluxes = [fx/node.tree.flux_prop_dict[fn] if fx > 0 else 0 for fx,fn in zip(
                    node.selection_flux_dict.values(),node.tree.selection_flux_names)]
    expected_norm_fits = [(1/(1+np.e**(10*(0.5-pfx))) - 0.006692850924284857)/0.9866142981514304 for pfx in prop_fluxes]
    expected_adj_fits = [ft**wt for ft, wt in zip(expected_norm_fits, node.tree.fit_weights)]
    expected_popfit = np.prod(expected_adj_fits)
    
    assert norm_fits == expected_norm_fits, "Normalized fitnesses do not match expected values"
    assert node.popfit == expected_popfit, "Population fitness does not match expected value"
    assert not node.reset, "Reset should not be triggered"
    assert 'Cfit' not in node.errors, "No error should be added"

# Run the tests
if __name__ == "__main__":
    pytest.main()
