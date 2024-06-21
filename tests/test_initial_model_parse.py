from unittest.mock import mock_open, patch
import sys
sys.path.append('C:\\Users\\tuf61393\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
sys.path.append('C:\\Users\\mcclo\\OneDrive - Temple University\\BinfoPSM\\PEMPS')
import pytest

# @patch("builtins.open", new_callable=mock_open, read_data="mock_copasi_file")
def test_initial_model_parse():

    from PEMPS import Node,Tree

    tree = Tree()
    tree.copasi_filename = 'Teusink.cps'
    tree.write_log_file = False
    Node = Node(tree)
    tree.initial_model_parse(Node)

    # Test binding constants
    assert tree.binding_constants == ['KmPFKF6P', 'KmPFKATP', 'KiPFKATP', 'KPFKAMP', 'KPFKF26BP', 'KPFKF16BP', 'Reaction_0_KmGLKGLCi', 'Reaction_0_KmGLKATP', 'Reaction_0_KmGLKG6P', 'Reaction_0_KmGLKADP', 'Reaction_1_KmPGIG6P_2', 'Reaction_1_KmPGIF6P_2', 'Reaction_4_KPFKAMP', 'Reaction_4_KPFKF16BP', 'Reaction_4_KPFKF26BP', 'Reaction_4_KiPFKATP', 'Reaction_4_KmPFKATP', 'Reaction_4_KmPFKF6P', 'Reaction_5_KmALDF16P', 'Reaction_5_KmALDGAP', 'Reaction_5_KmALDDHAP', 'Reaction_5_KmALDGAPi', 'Reaction_6_KmGAPDHGAP', 'Reaction_6_KmGAPDHNAD', 'Reaction_6_KmGAPDHBPG', 'Reaction_6_KmGAPDHNADH', 'Reaction_7_KmPGKP3G', 'Reaction_7_KmPGKATP', 'Reaction_7_KmPGKBPG', 'Reaction_7_KmPGKADP', 'Reaction_8_KmPGMP3G', 'Reaction_8_KmPGMP2G', 'Reaction_9_KmENOP2G', 'Reaction_9_KmENOPEP', 'Reaction_10_KmPYKPEP', 'Reaction_10_KmPYKADP', 'Reaction_10_KmPYKPYR', 'Reaction_10_KmPYKATP', 'Reaction_11_KmPDCPYR', 'Reaction_12_KSUCC', 'Reaction_13_KmGLTGLCo', 'Reaction_13_KmGLTGLCi', 'Reaction_14_KiADHNAD', 'Reaction_14_KmADHETOH', 'Reaction_14_KmADHNAD', 'Reaction_14_KmADHNADH', 'Reaction_14_KiADHNADH', 'Reaction_14_KmADHACE', 'Reaction_14_KiADHACE', 'Reaction_14_KiADHETOH', 'Reaction_15_KmG3PDHDHAP', 'Reaction_15_KmG3PDHNADH', 'Reaction_15_KmG3PDHGLY', 'Reaction_15_KmG3PDHNAD', 'Reaction_16_KATPASE']
    
    # Test global parameters
    assert Node.glob_par_dict == {'gR': 5.12, 'KmPFKF6P': 0.1, 'KmPFKATP': 0.71, 'Lzero': 0.66, 'CiPFKATP': 100.0, 'KiPFKATP': 0.65, 'CPFKAMP': 0.0845, 'KPFKAMP': 0.0995, 'CPFKF26BP': 0.0174, 'KPFKF26BP': 0.000682, 'CPFKF16BP': 0.397, 'KPFKF16BP': 0.111, 'CPFKATP': 3.0, 'AK eq constant': 0.45, 'TPI eq constant': 0.045}
    
    # Test kinetic parameters
    assert Node.kin_par_dict == {'Reaction_0_KmGLKGLCi': 0.08, 'Reaction_0_KmGLKATP': 0.15, 'Reaction_0_KeqGLK': 3800.0, 'Reaction_0_KmGLKG6P': 30.0, 'Reaction_0_KmGLKADP': 0.23, 'Reaction_1_VmPGI_2': 339.677, 'Reaction_1_KmPGIG6P_2': 1.4, 'Reaction_1_KeqPGI_2': 0.314, 'Reaction_1_KmPGIF6P_2': 0.3, 'Reaction_2_v': 6.0, 'Reaction_3_v': 2.4, 'Reaction_4_VmPFK': 182.903, 'Reaction_4_CPFKAMP': 0.0845, 'Reaction_5_KmALDF16P': 0.3, 'Reaction_5_KeqALD': 0.069, 'Reaction_5_KmALDGAP': 2.0, 'Reaction_5_KmALDDHAP': 2.4, 'Reaction_5_KmALDGAPi': 10.0, 'Reaction_5_KeqTPI': 0.045, 'Reaction_6_KmGAPDHGAP': 0.21, 'Reaction_6_KmGAPDHNAD': 0.09, 'Reaction_6_VmGAPDHr': 6549.8, 'Reaction_6_KmGAPDHBPG': 0.0098, 'Reaction_6_KmGAPDHNADH': 0.06, 'Reaction_6_KeqTPI': 0.045, 'Reaction_7_KmPGKP3G': 0.53, 'Reaction_7_KmPGKATP': 0.3, 'Reaction_7_KeqPGK': 3200.0, 'Reaction_7_KmPGKBPG': 0.003, 'Reaction_7_KmPGKADP': 0.2, 'Reaction_8_VmPGM': 2525.81, 'Reaction_8_KmPGMP3G': 1.2, 'Reaction_8_KeqPGM': 0.19, 'Reaction_8_KmPGMP2G': 0.08, 'Reaction_9_VmENO': 365.806, 'Reaction_9_KmENOP2G': 0.04, 'Reaction_9_KeqENO': 6.7, 'Reaction_9_KmENOPEP': 0.5, 'Reaction_10_VmPYK': 1088.71, 'Reaction_10_KmPYKPEP': 0.14, 'Reaction_10_KmPYKADP': 0.53, 'Reaction_10_KeqPYK': 6500.0, 'Reaction_10_KmPYKPYR': 21.0, 'Reaction_10_KmPYKATP': 1.5, 'Reaction_11_VmPDC': 174.194, 'Reaction_11_nPDC': 1.9, 'Reaction_11_KmPDCPYR': 4.33, 'Reaction_12_KSUCC': 21.4, 'Reaction_13_VmGLT': 97.264, 'Reaction_13_KmGLTGLCo': 1.1918, 'Reaction_13_KeqGLT': 1.0, 'Reaction_13_KmGLTGLCi': 1.1918, 'Reaction_14_VmADH': 810.0, 'Reaction_14_KiADHNAD': 0.92, 'Reaction_14_KmADHETOH': 17.0, 'Reaction_14_KeqADH': 6.9e-05, 'Reaction_14_KmADHNAD': 0.17, 'Reaction_14_KmADHNADH': 0.11, 'Reaction_14_KiADHNADH': 0.031, 'Reaction_14_KmADHACE': 1.11, 'Reaction_14_KiADHACE': 1.1, 'Reaction_14_KiADHETOH': 90.0, 'Reaction_15_VmG3PDH': 70.15, 'Reaction_15_KmG3PDHDHAP': 0.4, 'Reaction_15_KmG3PDHNADH': 0.023, 'Reaction_15_KeqG3PDH': 4300.0, 'Reaction_15_KmG3PDHGLY': 1.0, 'Reaction_15_KmG3PDHNAD': 0.93, 'Reaction_15_KeqTPI': 0.045, 'Reaction_16_KATPASE': 33.7}
    
    assert tree.spec_names == ['Glucose in Cytosol', 'Glucose 6 Phosphate', 'Fructose 6 Phosphate', 'Fructose-1,6 bisphosphate', 'Triose-phosphate', '1,3-bisphosphoglycerate', '3-phosphoglycerate', '2-phosphoglycerate', 'Phosphoenolpyruvate', 'Pyruvate', 'Acetaldehyde', 'High energy phosphates', 'NAD', 'NADH', 'Glycogen', 'Trehalose', 'CO2', 'Succinate', 'Extracellular Glucose', 'Ethanol', 'Glycerol', 'ATP concentration', 'ADP concentration', 'AMP concentration', 'sum of AXP conc', 'F2,6P']

    assert tree.spec_concs == [0.09875869199169, 1.033245613681812, 0.11281281458550177, 0.6019076395836982, 0.7775235367088307, 0.0003295738869195608, 0.3564840378592989, 0.044843711119032334, 0.07361684247063681, 8.523152463551881, 0.1701144516135018, 6.308881637770621, 1.5455597670249495, 0.044440232975050245, 0.0, 0.0, 1.0, 0.0, 50.0, 50.0, 0.15, 2.508390624954268, 1.2921003878620851, 0.2995089871836467, 4.1, 0.02]
    
    assert tree.spec_part_nums == [5.94738744447442e+19, 6.222350525244454e+20, 6.793746489656727e+19, 3.624772530092379e+20, 4.6823561822736056e+20, 1.984740337849918e+17, 2.146797054681867e+20, 2.7005514055958983e+19, 4.433309876649211e+19, 5.132762385445019e+21, 1.024453172926717e+20, 3.799297326083401e+21, 9.307578470017052e+20, 2.6762533838294614e+19, 0.0, 0.0, 6.02214076e+20, 0.0, 3.01107038e+22, 3.01107038e+22, 9.03321114e+19, 1.510588142453897e+21, 7.781210411756072e+20, 1.8036852797049566e+20, 2.4690777116e+21, 1.204428152e+19]
    
    assert tree.rxn_fluxes == [88.14952688218202, 77.349526882182, 6.0, 2.4, 77.34952688218192, 77.349526882182, 136.4968074417193, 136.4968074417194, 136.4968074417193, 136.49680744171937, 136.49680744171934, 136.4968074417193, 3.6404492645289386, 88.149526882182, 129.21590891266047, 18.20224632264468, 84.53276406095883]
    
    assert tree.rxn_names == ['Hexokinase', 'Glucose-6-phosphate isomerase', 'Glycogen synthesis', 'Trehalose 6-phosphate synthase', 'Phosphofructokinase', 'Aldolase', 'Glyceraldehyde 3-phosphate dehydrogenase', 'Phosphoglycerate kinase', 'Phosphoglycerate mutase', 'Enolase', 'Pyruvate kinase', 'Pyruvate decarboxylase', 'Succinate synthesis', 'Glucose transport', 'Alcohol dehydrogenase', 'Glycerol 3-phosphate dehydrogenase', 'ATPase activity']

if __name__ == "__main__":
    pytest.main()
