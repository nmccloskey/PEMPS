from unittest.mock import mock_open, patch
import sys
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
import pytest
# Set the matplotlib backend to a suitable one for the testing environment
import matplotlib
matplotlib.use('Agg')  # Use the Anti-Grain Geometry backend (suitable for scripts/tests)
matplotlib.rcdefaults()  # Reset matplotlib configuration to default values

@pytest.fixture
def mock_commands_file():
    commands_content = (
        "rooted newick string file name: Ascomycota_order.nwk\n"
        "population size(s): 1000\n"
        "ploidy: 4\n"
        "copasi file name: Teusink.cps\n"
        "no-mutation parameters: C,cell,volume,avogadr,avogadro,extracellular,glycerate,phosphates,Glco,GLCx,GLUe,Glc_e,cytosol,glycosome,default,chloroplast,Light_on,vacuole,phloem,r,D,phi,v(15),compartment,uVol\n"
        "exclude from bcl: None\n"
        "include in bcl (Can enter None): None\n"
        "fitness-determining fluxes: Pyruvate kinase\n"
        "weights for fitness calculation: 1\n"
        "number of simulations: 1\n"
        "generations to equilibrate: 0\n"
        "generations to branch: 0\n"
        "experiment foldername containing old equilibration to import (can enter None): None\n"
        "equilibrate (Y/n): Y\n"
        "experiment note: Teusink 1% branch asc order\n"
        "outfile name: ssoutT.txt\n"
        "branch lengths measured in (enter subs per site or mya or NA): mya\n"
        "Haldane (Y/n): Y\n"
        "SE directory: CopasiSE.exe\n"
        "BasiCO method (Y/n): Y\n"
        "flux proportionalization multiplier: 1\n"
    )
    return commands_content

def test_parse_user_commands(mock_commands_file):
    with patch("builtins.open", mock_open(read_data=mock_commands_file)):
        from PEMPS_ import Tree  # Import here to avoid potential circular import issues

        # Creating a Tree object and calling the parse_user_commands method
        tree = Tree()
        tree.parse_user_commands()

        # Asserting that the values are read correctly
        assert tree.newick_filename == "Ascomycota_order.nwk"
        assert tree.popsizes == [1000]
        assert tree.ploidy == 4
        assert tree.copasi_filename == "Teusink.cps"
        assert tree.selection_flux_names == ["Pyruvate kinase"]
        assert tree.fit_weights == [1]
        assert tree.no_mut_list == ["C", "cell", "volume", "avogadr", "avogadro", "extracellular", "glycerate", "phosphates", "Glco", "GLCx", "GLUe", "Glc_e", "cytosol", "glycosome", "default", "chloroplast", "Light_on", "vacuole", "phloem", "r", "D", "phi", "v(15)", "compartment", "uVol"]
        assert tree.num_sims == 1
        assert tree.eq_gens == 0
        assert tree.sim_gens == 0
        assert tree.imp_eq_filename == 'None'
        assert tree.equilibration == "Y"
        assert tree.exp_note == "Teusink_1%_branch_asc_order"
        assert tree.ssout_file == "ssoutT.txt"
        assert tree.excl_binding_list == []
        assert tree.incl_binding_list == []
        assert tree.branch_length_type == "mya"
        assert tree.implement_Haldane == "Y"
        assert tree.copasi_dir_str == "CopasiSE.exe"
        assert tree.use_basico_method == True

if __name__ == "__main__":
    pytest.main()
