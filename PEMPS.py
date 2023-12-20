"""
Phylogenetic Evolution of Metabolic Pathway Simulator

last updated 12/18/23


------------
instructions
------------

Required packages:
    os
    re
    math
    random
    dendropy
    warnings
    subprocess
    numpy
    pandas
    seaborn
    datetime
    copy - deepcopy
    matplotlib - pyplot

Required programs:
    1. COPASI GUI*
    2. COPASI SE
    *The GUI version is required only for modifying the 
    COPASI file so it is not necessary to include in the same directory
    or even install on the computer where PEMPS is run.

Required files:
    1. COPASI (.cps) file containing metabolic 
    model that reaches steady-state.
    2. Newick or text (.nwk or .txt) file containing
    rooted phylogeny as Newick string.
    3. commands.txt file (described below)

All files and programs (except for COPASI GUI) must be 
saved in the same directory; 
this directory is also the destination for the output folder.

In COPASI GUI, the COPASI (.cps) file must be modified:
    1. In the Steady-State Task, the "update model" and "executable"
    options must be checked.
    2. In the window opened by clicking on "Report" (bottom right),
    the options "Append" and "Confirm Overwrite" must be unchecked.
    Also, a text (.txt) file must be specified after "Filename".
    3. Save the .cps file.
These modifications ensure that the program updates initial parameters
based on mutations, that the SE version of COPASI can execute the 
Steady-State task via the command line, that the output file is
continually overwritten as opposed to being appended with new output
after each calculation of Steady-State, and that this output file
can be recognized by PEMPS. The user should click "Run" and then check
the Result section to verify that the selected model reaches steady 
state. If it doesn't, another model must be selected.

Note: if importing equilibrated root population, the output folder
must be in the same directory.

-------------
commands file
-------------
Whenever listing, use no spaces to separate list elements.
Leave no answer blank.

1. Enter file name of .nwk or .txt file containing Newick string.
    ex) canidaetree.nwk

2. Specify population size(s) as integers.
   If one number is entered, this will be the size of the population 
   of all branches. Otherwise, a number for each 
   branch in order must be entered. The order is the one in which
   nodes appear in the preliminary_branch_info file. To generate just 
   this file without any simulation, run the program with inputs of 
   0 and n to commands 8. and 12 respectively. Prepare an appropriate 
   list, and rerun the program.
    ex) 10000
    ex) 500,700,800,200

3. Enter population ploidy for phylogeny as an integer.
    ex) 1

4. Enter file name of COPASI (.cps) file containing metabolic model. 
Note: this file will be modified by the program, so to start another
 simulation, the user should reimport the model from BioModels and 
 resave as a .cps file. Saving a template file with the correct settings 
 adjustments is recommended.
    ex) Kerkhoven.cps

5. Enter names of reactions representing fluxes on which selective 
pressure operates.
    ex) pyruvate kinase [CDC19]

6. Enter weights (summing to 1) for each reaction flux specified above.
These values will determine how determinative each flux is to 
population fitness.
    ex) 1
    ex) 0.4,0.6

7. Enter parameters to be excluded from mutation.
    ex) Glco

8. Enter number of simulations to run as integer.

9. Enter integer of generations to equilibrate root population. If 0,
the program will automatically detect equilibration by finding when 
fitness and 80% of initial conditions and reaction fluxes reach certain
indicators of flatness when plotted over fixations.
If the user wishes to override the automatic equilibrium detector, 
or extend the equilibration for a previously simulated population,
any other integer can be entered.
    ex) 100000

10. Enter integer of generations to simulate along the longest line in
the phylogeny, with other generations numbers determined proportionally
for branches by their length. If 0, the program will automatically 
convert branch lengths from millions of years or substitutions per
site to generations (see methods in accompanying paper).
    ex) 250000

11. Enter foldername containing previously equilibrated model. The same 
equilibrated population can be further equilibrated and/or used as the 
starting point for any other phylogeny. Enter None to start
equilibrating from file in 4.
    ex) exp_updates_TEST_Kerkhoven_230523_18.01

12. Enter Y to equilibrate or n to go right to branching simulation.

13. Enter a note for the foldername containing program output.
    ex) updates TEST Kerkhoven

14. Enter the Steady-State output file name designated during the
modification of the COPASI file in COPASI GUI.
    ex) ssoutK.txt

15. Enter parameter names to be excluded from being categorized as
binding constants. The program searches for parameters containing a 'K'
in certain contexts among the kinetic parameters to 
identify binding constants.
    ex) kc

16. Enter any parameters to be included in the binding constant list
that may be missed by the automatic search.
    ex) parameter_3,parameter_97

17. Enter the type of branch length measurement used in the phylogeny as 
"subs per site" or "mya" (millions of years) or NA, in the
event that command 10 is not 0.
    ex) subs per site

18. Enter Y to implement Haldane's constraint or n to go without it.

19. Enter directory to COPASI SE.
    example windows: /mnt/c/Users/username/bio/copasi/bin/CopasiSE
    example mac: /Users/username/Downloads/PEMPS/CopasiSE

------
Output
------
output_folder: PEMPS_{experimental note}_{datetime}
    folders:
        equilibration_data
        simulation_{simulation no.}_{datetime}
    ascii_tree.txt
        text file of ascii phylogenetic tree from dendropy
    experimental_log.txt
        contains commands entered, parameters detected, branching info
    prelim_branch_info.xlsx
        pre-simulation node info (Newick substrings, sisters, etc.)

output_folder/equilibration_data
    folders (all containing line graphs over fixations as .png files):
        parameters
            each mutatable model parameter
            name: {branch}_{parameter name}.png
                here branch is "root"
                if a parameter is a specific reaction parameter,
                root_Reaction_{reaction no.}_{parameter name}.png
        reaction_fluxes
            fluxes for each model reaction
            name: {reaction name}_equilibration.png
        species_initial_concs
            initial concentrations for each model species
            name: conc_{species name}_equilibration.png
    data tables:
        equilibration_data.xlsx
            detailed info for each mutation
        equilibration_final_row.xlsx
            the info from the final mutation
        equilibration_fitness_fluxes_slopes_cvs.xlsx
            contains line flatness measurements 
            for auto-detecting equilibration
    pictures:
        all_fits.png
            line graph of each model fitness over fixations
        equilibration_fit.png
            line graph of fitness over fixations
        equilibration fit {flux under selection}.png
            for each flux under selection,
            a line graph of fitness over fixations
        equilibration_fitness_slopes.png
            slopes of model fitness over fixation check windows
        equilibration_fitness_cvs.png
            coefficents of variation of model fitness 
            over fixation check windows
        equilibration_pfixes.png
            histogram of probabilities of fixation for equilibration
    copasi file:
        equilibration_final_cps.cps
            the model, as a copasi file, of the last fixation
            used in user-extended equilibration
            or in simulating another tree from equilibrated root

output_folder/simulation_folder
    folders:
        branch_data
            folders:
                cps_files
                    models at final fixation for each branch
                generational_branch_data
                    .xlsx files like equilibration_data.xlsx
                    but with mutation info for each branch
                parameters
                    like equilibration_data/parameters
                    but over all mutations (including unfixed)
                reaction_fluces
                    like equilibration_data/reaction_fluxes
                    but over all mutations (including unfixed)
                species_initial_concs
                    like equilibration_data/species_initial_concs
                    but over all mutations (including unfixed)
            data tables:
                branch_info.xlsx
                    additions to prelim_branch_info.xlsx with
                    simulation info
                final_branch_data.xlsx
                    parameters at the end of each branch simulation
                branch_percent_diffs.xlsx
                    % difference from ending values of equilibrated
                    root to end of branch
                branch_normalized_percent_diffs.xlsx
                    values from previous file but normalized so that
                    positive values fall into [0,1]
                    and negative from [-1,0]
                branch_heatmap_values.xlsx
                    the values depicted in the heatmaps
                    (some parameters eliminated if they show no change)
            pictures:
                a few bar graphs for comparing branch attributes
                    fitness, generations, fixations, (cumulative) length
                two heatmaps showing normalized percent differences
                    percent_diff_heatmap_gnuplot2.png
                    percent_diff_heatmap_PiYG.png
        line_data
            same as branch data but only fixation data is included
            in parameters, reaction fluxes, and initial concentration
            (no unfxied mutations graphed in these folders)
    picture:
        allpfixes.png
            histogram of probabilities of fixation for all branches
            during simulation

"""


import os
import re
import math
import random
import warnings
import subprocess
import numpy as np
import pandas as pd
import seaborn as sns
from datetime import datetime
from copy import deepcopy as dc
import matplotlib.pyplot as plt


class Node():
    """
    A class to represent a node and its preceding branch in the tree.

    Attributes
    ----------
    num : int
        number assigned based on length of name
    name : str
        newick substring
    length : float
        branch length
    cum_length : float
        cumulative branch length
    conc_factor : float
        concordance factor (not used)
    type : str = 'node'
        node type (root, external, or internal)
    ancestors : list
        list of numbers of node's ancestors
    parent : int
        number of node parent
    children : list
        list of node numbers of node's children (immediate descendants)
    descendants : list
        list of node numbers of all node's descendants
    sister : int
        node number of node's sister
    popsize : int
        population size of node
    gens : int
        number of generations to simulate this node
    external_index : int
        for ordering lines in graph based on tree
    data : dict
        mutational data dictionary
    fix_count : int
        number of fixations
    imp_fix_count : int
        for root node equilibration imports - the imported fix_count
    mut_count : int
        number of mutations along branch
    rev_count : int
        number of error-based reversals along branch
    mutants : list
        list of model parameters (strings) that mutated this generation
    model : str
        metabolic model as text for writing .cps files
    init_conds : list
        initial conditions (floats) in metabolic model
    glob_par_dict : dict
        dictionary of model parameters (str, keys) and values (float)
    kin_par_dict : dict
        like glob_par_dict but kinetic parameters
    ind_par_dict : dict
        for parameters that require indirect mutations through
        adjusting value in equation proportionate to mutation
    init_concs : list
        initial concentrations (floats) for metabolic model
    species_concs : list
        species concentrations (nmol/uL)
    old_species_concs : list
        previous species concentrations (floats) 
        for non-fixations or resets
    rxn_fluxes : list
        reaction fluxes (extensive) (nmol/min) (floats)
    selection_flux_dict : dict
        fluxes (extensive) (nmol/min) (floats)on which selection acts
        a subset of rxn_fluxes
        keys = reaction names
        values = fluxes
    popfit : float
        population fitness
    reset : Bool
        triggers a reset if steady state is not reached
    errors : list
        error types (str) encountered for this mutation
    slopes : list
        best line of fit slopes for fitness over ### number of fixations
    coeff_vars : list
        coefficient of variations for fitness over ### fixations
    fixed_fitnesses : list
        list to check for equilibration in root population
    
    Methods
    -------
    parse_ssout():
        Parse steady state output file.
    update_cps():
        Alter model parameters after mutation.
    calc_fit():
        Calculate population fitness.
    mutate():
        Introduce mutations to appropriate model parameters.
    calc_prob_fix(old_popfit):
        Calculate probability of fixation for a mutation.
    inherit(parent_node):
        Transfer relevant attributes to a child node.
    filter_data_dict():
        Remove unfixed muations for graphing.
    """

    def __init__(self):
        """create a node object with default empty attributes"""
        self.num = None
        self.name = None
        self.length = 0
        self.cum_length = None
        self.conc_factor = None
        self.type = 'node'
        self.ancestors = []
        self.parent = None
        self.descendants = []
        self.children = []
        self.sister = None
        self.popsize = 0
        self.gens = 0
        self.external_index = None
        self.data = None
        self.fix_count = 0
        self.imp_fix_count = 0
        self.mut_count = 0
        self.rev_count = 0
        self.mutants = []
        self.model = None
        self.init_conds = None
        self.glob_par_dict = None
        self.kin_par_dict = None
        self.ind_par_dict = None
        self.spec_concs = None
        self.spec_part_nums = None
        self.old_species_concs = None
        self.rxn_fluxes = None
        self.selection_flux_dict = None
        self.popfit = None
        self.reset = False
        self.errors = []
        self.two_perc_rule_gen_thresh = 0
        self.fixed_eq_check_vals = None
        self.slopes_cvs = None

    def parse_ssout(self):
        """
        Parse steady state output file.

        Detect errors in steady state calculation.
        Extract initial concentrations and particle numbers
        for species.
        Extract fluxes for all reactions,
        and update separate dict for reactions under selection.
        """

        # Read steady state output file from COPASI.
        with open(ssout_file) as file:
            # steady state text
            sstext = file.read()
        # Detect errors calculating steady state flux.
        if re.search(
            r'No steady state with given resolution was found!',
            sstext) != None:
            # Reset if error message encountered.
            self.reset = True
            # NoSS = No steady state was found.
            self.errors.append('NoSS')
        if re.search(
            r'Summary:\nThis state is asymptotically stable',
            sstext) == None:
            # Reset if asymptotically unstable.
            self.reset = True
            # NAS = Not asymptotically stable.
            self.errors.append('NAS')
        # Extract info for model species.
        spec_m = re.search(r'Species.+?(?=\n\n)',sstext,re.DOTALL)
        # Create data frame of species info. 
        spec_df = pd.DataFrame([x.split('\t') \
                                for x in spec_m.group(0).split('\n')])
        # Species concentrations.
        self.spec_concs = [float(spec_df[spec_df.iloc[:,0]==spec_name][1]) \
                           for spec_name in spec_names]
        # Species particle numbers.
        self.spec_part_nums = [float(spec_df[spec_df.iloc[:,0]==spec_name][3]) \
                              for spec_name in spec_names]
        # Extract info for model reactions.
        rxn_m = re.search(r'Reaction.+?(?=\n\n)',sstext,re.DOTALL)
        # Create data frame of reaction info.
        rxn_df = pd.DataFrame([x.split('\t') \
                               for x in rxn_m.group(0).split('\n')])
        # Extract extensive flux (nmol/min) for model reactions.
        self.rxn_fluxes = [float(x) for x in rxn_df.iloc[1:,1]]
        # Subset of reactions on which selection acts.
        self.selection_flux_dict = {
            selection_flux_name:\
                float(rxn_df[rxn_df[0]==selection_flux_name][1]) \
                    for selection_flux_name in selection_flux_names}

    def update_cps(self):
        """
        Alter model parameters after mutation.
         
        Before the next steady state calculation,
        update initial values, kinetic parameters,
        and those parameters whose adjustment is indirect
        (this latter type is rarely encountered).
        Rewrite COPASI file.
        """
        global copasi_filename
        # Replace string of initial values with mutated ones.
        self.model = re.sub(r'(?<=\"initialState\">\n\s{6}).+?(?=\s\n)',
                              ' '.join([str(x) for x in self.init_conds]),
                              self.model,re.DOTALL)
        # Update kinetic parameters in COPASI file.
        # Loop over each reaction in file.
        for m1 in re.finditer(r'<Reaction key=.+?</Reaction>',
                              self.model,re.DOTALL):
            # Find the old reaction text.
            old_rxn_text = m1.group(0)
            # Create copy for update.
            new_rxn_text = dc(old_rxn_text)
            # Extract reaction key.
            rxn_key = re.search(r'(?<=key=\").+?(?=\")',old_rxn_text).group(0)
            # Extract kinetic parameters for this reaction.
            rxn_kin_pars = [kin_par for kin_par in self.kin_par_dict.keys() \
                            # Find parameters that begin with rxn_key.
                            if re.match(r'{}_'.format(rxn_key),kin_par) != None
                            ]
            for rxn_kin_par in rxn_kin_pars:
                # Remove rxn_key and underscore from parameter name.
                kin_par = rxn_kin_par[len(rxn_key)+1:]
                # Find old value string and write new one.
                old_val_str = re.search(
                    r'name=\"{}\" value=\".+?\"'.format(kin_par),
                    old_rxn_text).group(0)
                new_val_str = re.sub(r'(?<=value=\").+?(?=\")',
                                     str(self.kin_par_dict[rxn_kin_par]),
                                     old_val_str)
                # Update reaction text.
                new_rxn_text = new_rxn_text.replace(old_val_str,new_val_str)
            # Update model text.
            self.model = self.model.replace(old_rxn_text,new_rxn_text)
        # Update parameters whose adjustment is indirect.
        ind_par_strs = [m.group(0) for m in re.finditer(
            r'Metabolites.{,600}\d+?/&lt;',self.model,re.DOTALL)]
        # For each such parameter that mutated,
        for ind_par,ind_par_str in zip(self.ind_par_dict,ind_par_strs):
            if ind_par in self.mutants:
                # extract its value,
                value = self.ind_par_dict[ind_par]
                # replace the relevant portion of the string,
                new_str = re.sub(r'\d+?(\.\d*?)?(?=/&lt;)',
                            ind_par_str(value),ind_par_str)
                # and replace the whole string.
                self.model = self.model.replace(ind_par_str,new_str)
        # Rewrite cps file.
        with open(copasi_filename,'w',encoding='utf8') as file:
            file.write(self.model)

    def calc_fit(self):
        """
        Calculate fitness.
        
        Proportionalize fluxes under selection.
        Calculate normalized fitnesses and adjust by weight.
        Calculate population fitness.

            Returns:
                norm_fits (list) : list of normalized fitnesses (floats)       
        """

        # Calculate proportionalized fluxes for each selection_flux.
        # One negative flux will have fitness of 0.
        prop_fluxes = [fx/flux_prop_dict[fn] if fx > 0 else 0 for fx,fn in zip(
                    self.selection_flux_dict.values(),selection_flux_names)]
        # Calculate normalized fitnesses for each proportionalized flux.
        # No fitness advantage is achieved by exceeding 1.
        norm_fits = [(1/(1+np.e**(10*(0.5-pfx))) - 0.006692850924284857)
                         /0.9866142981514304 for pfx in prop_fluxes]
        # Adjust fitnesses by weight.
        adj_fits = [ft**wt for ft,wt in zip(norm_fits,fit_weights)]
        # Calculate population fitness.
        self.popfit = np.product(adj_fits)
        # Trigger reset if value isn't real.
        if isinstance(self.popfit,complex):
            self.reset = True
            self.errors.append('Cfit')
        return norm_fits

    def mutate(self):
        """Introduce mutations to appropriate model parameters."""
        
        # Empty list for mutated parameters.
        self.mutants = []
        def mutate_paramdict(par_dict,kinetic=False):
            """
            Subfunction to mutate a parameter dictionary.

                Parameters:
                    par_dict (dict) : a parameter dictionary
                    kinetic (bool) : identifies the kin_par_dict
            """
            # Select only parameters to be mutated.
            if kinetic:
                mutatable_params = kin_mut_par_selection
                num_params = len([par for par in par_dict \
                                  if par not in no_mut_list])
            else:
                mutatable_params = [par for par in par_dict \
                                    if par not in no_mut_list]
                # If all kinetic parameters are included in globals,
                if len(self.kin_par_dict) == 0:
                    # ensure weighted selection.
                    mutatable_params.extend(kin_mut_par_selection)
                num_params = len(mutatable_params)
            for _ in range(num_params):
                # Poisson random variable with lambda = 0.003.
                if np.random.poisson(0.003) == 1:
                    # Select random parameter.
                    par = random.choice(mutatable_params)
                    self.mutants.append(par)
                    # Check if parameter exists in current dict.
                    if par not in par_dict:
                        par = extract_parname(par)
                    # If not, just continue.
                    if par not in par_dict:
                        continue
                    try:
                        par_prop_counts[par] += 1
                    except:
                        try:
                            # Convert global to kinetic parameter key.
                            par_prop_counts[glob_to_kin_dict[par]] += 1
                        except:
                            pass
                    # Save old value for Haldane's constraint.
                    if implement_Haldane == 'Y' and Haldane_rxn_dicts != {}:
                        old_par_val = par_dict[par]
                    # Mutations tend to make parameters a little worse, 
                    # which for binding constants means larger.
                    loc = mut_change if par in binding_constants \
                        else -mut_change
                    # Create a mutational effect.
                    mut_effect = np.random.normal(loc=loc,scale=mut_change)
                    # For indirectly-modified parameters,
                    if par in self.ind_par_dict:
                        # change both effective value for calculation,
                        self.ind_par_dict[par] *= 1 + mut_effect
                        # and this value for data recording.
                        self.glob_par_dict[par] *= 1 + mut_effect
                    else:
                        par_dict[par] *= 1 + mut_effect
                        if not kinetic:
                            # assign new value to string and dict
                            self.init_conds[names.index(par)] = \
                                self.glob_par_dict[par]
                    
                    if implement_Haldane == 'Y':
                        # Adjust based on Haldane's constraint.
                        if kinetic and par in Haldane_params:
                            try:
                                # Identify reaction.
                                rxn_key = re.match(r'Reaction\_\d+(?=\_)',
                                                   par).group(0)
                                # Find other parameters in reaction.
                                for Haldane_dict in Haldane_rxn_dicts[rxn_key]:
                                    if par in Haldane_dict.values():
                                        keq = Haldane_dict['Keq']
                                        vf = Haldane_dict['Vmax']
                                        ks = Haldane_dict['KS']
                                        kp = Haldane_dict['KP']
                                        break
                                # Reverse Haldane_dict to identify 
                                # type of binding constant.
                                rdict = {k:v for v,k in Haldane_dict.items()}
                                # Adjust counterpart accordingly.
                                if rdict[par] == 'KS':
                                    # Solve for reverse reaction rate.
                                    # Vr = (Vf*KP)/(Keq*KS)
                                    vr = (par_dict[vf]*par_dict[kp])/\
                                        (keq_dict[keq]*old_par_val)
                                    # KP = (Keq*Vr*KS)/Vf
                                    par_dict[kp] = (
                                        keq_dict[keq]*vr*par_dict[ks])/\
                                            par_dict[vf]
                                elif rdict[par] == 'KP':
                                    vr = (par_dict[vf]*old_par_val)/\
                                        (keq_dict[keq]*par_dict[ks])
                                    # KS = (Vf*KP)/(Keq*Vr)
                                    par_dict[ks] = (
                                        par_dict[vf]*par_dict[kp])/\
                                            (keq_dict[keq]*vr)
                            except:
                                self.errors.append('Hfail')

        # Call subfunction on both parameter dicts.
        if len(self.glob_par_dict) > 0:
            mutate_paramdict(self.glob_par_dict)
        if len(self.kin_par_dict) > 0:
            mutate_paramdict(self.kin_par_dict,kinetic=True)

    def calc_prob_fix(self,old_popfit):
        """
        Calculate probability of fixation for a mutation.

            Parameters:
                old_popfit (float): pre-mutation population fitness
            Returns:
                sel_coeff (float): selection coefficient
                prob_fix (float): probability of fixation
                boolean indicating fixation, based on random number
        """

        # Calculate selection coefficient.
        sel_coeff = self.popfit/old_popfit - 1
        try:
            # Overflow errors occur beyond these ranges.
            if abs(sel_coeff) <= 1e-18:
                prob_fix = 0.5
            elif sel_coeff <= -0.25:
                prob_fix = 0
            else:
                prob_fix = (1 - np.e**(-2*ploidy*self.popsize*sel_coeff*0.5)) \
                         / (1 - np.e**(-2*ploidy*self.popsize*sel_coeff))
        except:
            # Rarely anything goes awry, but if it does,
            # trigger a reset with no chance of fixation.
            prob_fix = 0
            self.reset = True
            # Add selection coefficient to errors.
            self.errors.append(sel_coeff)
        # Trigger reset if selection coefficient is complex.
        if isinstance(sel_coeff,complex):
            self.reset = True
            self.errors.append('Csc')
        return sel_coeff,prob_fix,np.random.uniform(0,1)<prob_fix

    def inherit(self,parent_node):
        """
        Transfer relevant attributes to a child node.
        
            Parameter:
                parent_node (Node object): the direct ancestor
        """
        self.model = dc(parent_node.model)
        self.init_conds = dc(parent_node.init_conds)
        self.glob_par_dict = dc(parent_node.glob_par_dict)
        self.kin_par_dict = dc(parent_node.kin_par_dict)
        self.ind_par_dict = dc(parent_node.ind_par_dict)
        self.spec_concs = dc(parent_node.spec_concs)
        self.rxn_fluxes = dc(parent_node.rxn_fluxes)
        self.selection_flux_dict = dc(parent_node.selection_flux_dict)
        self.spec_part_nums = dc(parent_node.spec_part_nums)
        self.popfit = parent_node.popfit
        # Last row of parent data dict that fixed 
        # becomes first row of child's.
        if parent_node.fix_count > 0:
            # Find fixation index (last mutation that fixed)
            # by reversing 'fix' column and indexing the first True.
            # Add 1 because negative indexing starts at 1.
            fixind = parent_node.data['fix'][::-1].index(True) + 1
        else:
            # If there are no parental fixations, 
            # just index the last row.
            fixind = 1
        # Update data dict, reseting the generation count to 0.    
        self.data = {info:([parent_node.data[info][-fixind]] if \
                        info != 'gens' else [0]) for info in data_labels}

    def filter_data_dict(self):
        """Remove unfixed muations for graphing."""

        # Make dataframe for all node data.
        all_data = pd.DataFrame(self.data)
        # Select only the rows representing fixed mutations.
        filtered_data = all_data[all_data['fix']==True]
        # Update node's data dict.
        self.data = filtered_data.to_dict(orient='list')

class Tree():
    """
    A class for representing the phylogenetic tree.

    Attributes
    ----------
    newick_string : str
        the Newick string of the phylogeny
    branch_dict : dict
        dictionary of node objects keyed by node.number
    branch_list : list
        list of same node objects
    line_dict : dict
        like branch dict, but nodes contain data from entire lineage
    line_list : list
        list of lines keyed by terminal (external) node.number
    GEN_TO_LENGTH_RATIO : float
        ratio of generations to branch length for determining
        how many generations to simulate a branch population
    
    Methods
    -------
    prnt_msg(S):
        print message to screen and logfile
    parse_user_commands():
        read commands.txt file and extract info
    initial_model_parse(node):
        read metabolic model into Node object
    find_branches(exp_path):
        implement phylogeny as Node objects
    populate():
        create root population
    simulate(node):
        run simulation for a population (in Node object)
    find_glr():
        convert branch lengths to generations per branch
    branch(node):
        recurse through phylogeny and run simulations
    trace_lines():
        concatenate branches into lines
    write_final_info(nodes,path,info_type,no=''):
        record final node info
    plot_fitness(nl,path,itype):
        plot fitnesses for each Node in list
    plot_species_and_fluxes(nl,path,itype):
        plot model species and reaction fluxes for each Node in list
    plot_per_node(nl,path,itype):
        save bar graphs of various node attributes
    graphpars(nl,path,itype):
        graph model parameters for each Node in list
    record_datatables(nl,path,itype,nsim=0,gen=True):
        write excel files of mutation info
    record_equilibration_data(root_node,exp_path,gen=False):
        run all functions to record root node data
    record_node_data(nl,sim_path,itype,nsim,gen):
        run all functions to record node data
    analyze_sims(exp_path):
        average changes in parameters across simultions in an experiment
    import_equilibrated_root():
        load info from previous equilibration
    """
    
    def __init__(self):
        """Initialize Tree object."""
        self.newick_string = ''
        self.branch_dict = {} # branch dict
        self.branch_list = [] # branch list
        self.line_dict = {} # line dict
        self.line_list = [] # line list
        self.GEN_TO_LENGTH_RATIO = None # generation to length ratio

    def parse_user_commands(self):
        """Read in user commands from text file."""
        global ctext,newick_filename,popsizes,ploidy,copasi_filename
        global no_mut_list,excl_binding_list,selection_flux_names
        global selection_flux_labels,fit_weights,num_sims,eq_gens,sim_gens
        global imp_eq_filename,equilibration,exp_note,ssout_file
        global incl_binding_list, branch_length_type, implement_Haldane
        global copasi_dir_str

        # Read user commands file.
        with open('commands.txt') as cfile:
            ctext = cfile.read()

        # Newick string file.
        newick_filename = re.search(
            r'(?<=rooted newick string file name: ).+?(?=\n)',ctext).group(0)
        # Population sizes.
        popsizes = [int(x) for x in re.search(
            r'(?<=population size\(s\): ).+?(?=\n)',ctext).group(0).split(',')]
        # Ploidy.
        ploidy = int(re.search(r'(?<=ploidy: )\d+?(?=\n)',ctext).group(0))
        # Copasi file name.
        copasi_filename = re.search(
            r'(?<=copasi file name: ).+?(?=\n)',ctext).group(0)
        # Parameters to exclude from mutation.
        no_mut_list = re.search(r'(?<=no-mutation parameters: ).+?(?=\n)',
                                ctext).group(0).split(',')
        # Exclude from binding constant list.
        excl_binding_list = re.search(r'(?<=exclude from bcl: ).+?(?=\n)',
                                     ctext).group(0).split(',')
        # Include in binding constant list.
        ibl_match = re.search(r'(?<=include in bcl \(Can enter None\):).+?(?=\n)',
                                      ctext).group(0)
        if ibl_match != None and ibl_match != 'None':
            incl_binding_list = ibl_match.split(',')
        else:
            incl_binding_list = []
        # Fitness-determining flux reactions.
        selection_flux_names = re.search(
            r'(?<=fitness-determining fluxes: ).+?(?=\n)',
            ctext).group(0).split(',')
        # List for data recording.
        selection_flux_labels = ['fit '+F for F in selection_flux_names]
        # Weights for fitness calculation.
        fit_weights = [float(x) for x in \
                re.search(r'(?<=weights for fitness calculation: ).+?(?=\n)',
                        ctext).group(0).split(',')]
        # If 0 entered, weight equally.
        if fit_weights == [0]:
            num_sel_flux = len(selection_flux_labels)
            fit_weights = [1/num_sel_flux] * num_sel_flux
        # number of simulations
        num_sims = int(re.search(r'(?<=number of simulations: )\d+?(?=\n)',
                              ctext).group(0))
        # generations to equilibrate and branch
        eq_gens = int(re.search(r'(?<=generations to equilibrate: )\d+?(?=\n)',
                             ctext).group(0))
        sim_gens = int(re.search(r'(?<=generations to branch: )\d+?(?=\n)',
                             ctext).group(0))
        # import old equilibration
        imp_eq_filename = re.search(
            r'(?<=experiment foldername containing old equilibration to import \(can enter None\): ).+?(?=\n)',
            ctext).group(0)
        # equilibrate?
        equilibration = re.search(r'(?<=equilibrate \(Y/n\): )\w',
                                  ctext).group(0)
        # experiment note
        exp_note = re.search(r'(?<=experiment note: ).+?(?=\n)',
                            ctext).group(0).replace(' ','_')
        # outfile name
        ssout_file = re.search(r'(?<=outfile name: ).+?(?=\n)',ctext).group(0)
        # Type of branch length.
        branch_length_type = re.search(r'(?<=branch lengths measured in \(enter subs per site or mya or NA\)\: ).+?(?=\n)',
                                       ctext).group(0)
        # Haldane's constraint.
        implement_Haldane = re.search(r'(?<=Haldane \(Y/n\): )\w',
                                  ctext).group(0)
        # COPASI SE directory.
        copasi_dir_str = re.search(r'(?<=SE directory: ).+(?=\n)',
                                  ctext).group(0)
 
    def initial_model_parse(self,node):
        """
        Parse cps file and steady state output file.

            Parameter:
                node (node object):
                    the node whose copasi file to parse
        """

        global copasi_filename,keq_dict,binding_constants,init_vals #,no_mut_list
        global names,sstext,spec_names,spec_labels,spec_concs_labels,NUM_FLUXES
        global rxn_names,selection_flux_names,selection_flux_labels
        global first_columns,mut_pars,data_labels,zerolist,kin_names
        global Haldane_rxn_dicts,Haldane_rxns,Haldane_params, all_pars

        # Extract parameters from model.
        with open(copasi_filename,encoding='utf8') as cpsfile:
            node.model = model = cpsfile.read()
        # Blank equilibrium constant dict, kinetic parameter dict,
        keq_dict,kin_par_dict = {},{}
        # binding constant list, zerolist, name and kinetic name list.
        binding_constants,zerolist,names,kin_names = [],[],[],[]
        # # List of parameters to exclude from mutation.
        # no_mut_list = []
        # Object references.
        obj_refs = [m.group(0) for m in \
                   re.finditer(r'(?<=objectReference=\").+?(?=\")',model)]
        # Initial value string.
        init_val_str = re.search(r'(?<=\"initialState\">\n\s{6}).+?(?=\s\n)',
                                 model,re.DOTALL).group(0)
        # Initial value list.
        init_vals = [float(x) for x in init_val_str.split(' ')]
        # Find parameter names with object references.
        for objref in obj_refs:
            try:
                names.append(re.search(
                    r'(?<=key=\"{}\"\sname=\").+?(?=\")'.format(objref),
                    model).group(0))
            except:
                pass
        # Assume first is model start time and exclude.
        glob_par_dict = {n:v for n,v in zip(names[1:],init_vals[1:])}
        # Loop through each reaction section in cps file.
        for m1 in re.finditer(r'<Reaction key=.+?</Reaction>',
                              model,re.DOTALL):
            # Extract reaction text and key.
            rxn_text = m1.group(0)
            rxn_key = re.search(r'(?<=key=\").+?(?=\")',rxn_text).group(0)
            # Find kinetic parameters and name with reaction key.
            for m2 in re.finditer(r'(?<=name=\").+?(?=\"/>)',rxn_text):
                kname,kval = m2.group(0).split('" value="')
                kin_names.append(kname)
                # rxn_keys.append(rxn_key)
                kpdkey = rxn_key+'_'+kname
                kin_par_dict[kpdkey] = float(kval)
                # Exclude designated parameters from mutation.
                if kname in no_mut_list:
                    no_mut_list.append(kpdkey)
                # Include designated parameters in binding constant list.
                if kname in incl_binding_list:
                    binding_constants.append(kname)
                # # If parameter is Vmax,
                # if re.search(r'(\_|^)v\w*(\_|$)',kname,re.IGNORECASE) != None:
                #     # Add to proposal count dict
                #     if not kname.endswith('max'):
                #         par_prop_counts[kpdkey+'_max'] = 0
                #     else:
                #         par_prop_counts[kpdkey] = 0
                # # Otherwise represent parameter once
                # elif re.search(r'keq',kname,re.IGNORECASE) == None:
                #     par_prop_counts[kpdkey] = 0
        # Winnow the parameter dicts.
        def winnow(pard):
            """
            Subfunction to exclude certain parameters and identify
            binding constants.

                Parameter:
                    pard (dict):
                        parameter dict
            """

            global keq_dict,binding_constants # ,no_mut_list
            for par in pard:
                # Find equilibrium constants to avoid mutating them.
                if re.search(r'keq',par,re.IGNORECASE) != None:
                    keq_dict[par] = pard[par]
                # Detect binding constants.
                if re.search(r'(^k|.*\_k)(?!(cat|eq|\d)).+',
                             par,re.IGNORECASE) != None:
                    if par not in excl_binding_list:
                        binding_constants.append(par)
                # # Exclude certain parameters.
                # for no_mut in no_mut_list:
                #     if re.search(r'([^\w]|^){}([^\w]|$)'.format(no_mut),
                #                  par,re.IGNORECASE) != None:
                #         no_mut_list.append(par)
                # Values of 0 do not mutate.
                if pard[par] == 0:
                    zerolist.append(par)
        # Winnow both parameter dicts.
        winnow(glob_par_dict)
        winnow(kin_par_dict)
        
        # Write binding constants to logfile.
        if write_log_file:
            with open (logfile,'a') as lf:
                lf.write('\nbinding constants: '\
                         +str(binding_constants)+'\n'+'\n')
        # Find parameters whose values must be manipulated indirectly
        # through a formula. 
        # Get names of such parameters from all metabolite groups.
        ind_par_segs = [m.group(0) for m in \
            re.finditer(r'Metabolites.{,600}\d+?/&lt;',model,re.DOTALL)]
        ind_par_names = [re.search(r'(?<=\[).+?(?=\])',seg,re.DOTALL).group(0)\
                         for seg in ind_par_segs]
        # Remove slashes from names.
        for i,ipname in enumerate(ind_par_names):
            try:
                ind = ipname.index('\\')
                ind_par_names[i] = ipname[:ind] + ipname[ind+1:]
            except:
                pass
        # Find values.
        ind_par_vals = [
            float(re.search(r'\d+?(\.\d*?)?(?=/&lt;)',seg).group(0)) \
                for seg in ind_par_segs]
        # Indirectly adjusted paramter dict.
        ind_par_dict = {k:float(v) for k,v in zip(ind_par_names,ind_par_vals)}
        # Check for redundancies.
        redundant_pars = [m.group(0) for m in re.finditer(
            r'<ModelParameter[^>]*?Parameter=.*?InitialValue>',
            model,re.DOTALL)]
        redundant_par_dict = {
            re.search(r'(?<=Parameter=).+?(?=\")',rp).group(0):\
                re.search(r'(?<=Values\[).+?(?=\])',rp).group(0)\
                      for rp in redundant_pars}
        # Remove redundancies.
        # Also make dict to translate global to kinetic parameters
        # for par_prop_count dict.
        global glob_to_kin_dict
        glob_to_kin_dict = {}
        old_kin_par_dict = dc(kin_par_dict)
        for rpar in redundant_par_dict:
            for k in old_kin_par_dict:
                if re.search(r'Reaction\_\d+?\_{}'.format(rpar),k) != None:
                    try:
                        del kin_par_dict[k]
                        glob_to_kin_dict[rpar] = k
                    except:
                        pass
        
        global kin_mut_par_selection
        # List to ensure that the ratio of no. mutational proposals to Vmax parameters to no. mutational proposals to other reaction parameters is approximately 1, in keeping with the idea that an enzyme has equivalent numbers of sites that affect enzyme expression and other reaction parameters.
        kin_mut_par_selection = []
        # Dict for counting mutation proposals for each parameter.
        global par_prop_counts
        par_prop_counts = {}
        global rxn_keys
        rxn_keys = []
        # # Object references.
        # obj_ref to name dict
        objref_name_dict = {o:n for o,n in zip(obj_refs,names)}
        # dict, keyed by reaction key, for list of dicts, keyed by Haldane params
        Haldane_rxn_dicts = {}
        # list of parameters that can comply with Haldane's constraint
        Haldane_params = []
        # list of reactions with such parameters
        Haldane_rxns = []
        # Reaction sections.
        rxn_sects = [m1.group (0) for m1 in re.finditer(
            r'<Reaction key=.+?</Reaction>',model,re.DOTALL)]
        # within reaction sections,
        for rxn_section in rxn_sects:
            rxn_key = re.search(r'(?<=key=\").+?(?=\")',rxn_section).group(0)
            rxn_keys.append(rxn_key)
            # Find names of reaction parameters.
            # rxn_par_names = [m.group(0) for m in re.finditer(r'(?<=name=\").+?(?=\")',rxn_section)]
            rxn_par_names = [m2.group(0).split('" value="')[0] for m2 in re.finditer(r'(?<=name=\").+?(?=\"/>)',rxn_section)]
            
            for rp in rxn_par_names:
                par = rxn_key + '_' + rp
                # If parameter is Vmax,
                if re.search(r'(\_|^)v\w*(\_|$)',rp,re.IGNORECASE) != None:
                    # Represent it once for itself, and once for every 
                    # other param in rxn
                    # (excluding keq which doesn't mutate).
                    # One representation represents kcat, so count(Vmax)
                    # is 1 greater than count(non-keq-non-vmax params).
                    kin_mut_par_selection.extend([par]*(len(rxn_par_names)-1))
                    # Add to proposal count dict
                    par_prop_counts[par] = 0
                # Otherwise represent parameter once
                elif re.search(r'keq',rp,re.IGNORECASE) == None:
                    kin_mut_par_selection.append(par)
                    par_prop_counts[par] = 0

            # Collect parameters to implement Haldane's constraint.
            if implement_Haldane == 'Y':
                try:
                    # find substrates and products in ListOFpass
                    # substrate section and product section
                    substrate_sect = re.search(r'<ListOfSubstrates.+?</ListOfSubstrates',rxn_section,re.DOTALL).group(0)
                    product_sect = re.search(r'<ListOfProducts.+?</ListOfProducts',rxn_section,re.DOTALL).group(0)
                    # object references aka metabolite ids, assume that S1,P1 and S2,P2 are paired by order
                    substrate_obj_refs = [m.group(0) for m in re.finditer(r'(?<=metabolite=\").+?(?=\")',substrate_sect)]
                    product_obj_refs = [m.group(0) for m in re.finditer(r'(?<=metabolite=\").+?(?=\")',product_sect)]
                    # Check that length matches and is above 0 ----
                    if len(substrate_obj_refs) == len(product_obj_refs) > 0:
                        # substrate strings to search rxn pars for
                        substrate_strs = [re.sub(r'\_\w','',objref_name_dict[s]) for s in substrate_obj_refs]
                        product_strs = [re.sub(r'\_\w','',objref_name_dict[p]) for p in product_obj_refs]
                        # find keq and vmax
                        rxn_keq = rxn_vmax = None
                        for rpn in rxn_par_names:
                            try:
                                keq = re.search(r'keq',rpn,re.IGNORECASE).group(0)
                                if keq != None:
                                    rxn_keq = rxn_key + '_' + rpn
                            except:
                                pass
                            try:
                                vmax = re.search(r'(\_|^)v\w*(\_|$)',rpn,re.IGNORECASE).group(0)
                                if vmax != None:
                                    rxn_vmax = rxn_key + '_' + rpn
                            except:
                                pass
                        if rxn_keq != None and rxn_vmax != None:
                            rxn_dicts = []
                            for substrate,product in zip(substrate_strs,product_strs):
                                Haldane_dict = {'Keq':rxn_keq,'Vmax':rxn_vmax}
                                for rpn in rxn_par_names:
                                    try:
                                        ks = re.search(r'k(m)?(\_)?{}'.format(substrate),rpn,re.IGNORECASE).group(0)
                                        if ks != None:
                                            Haldane_dict['KS'] = rxn_key + '_' + rpn
                                    except:
                                        pass
                                    try:
                                        kp = re.search(r'k(m)?(\_)?{}'.format(product),rpn,re.IGNORECASE).group(0)
                                        if kp != None:
                                            Haldane_dict['KP'] = rxn_key + '_' + rpn
                                    except:
                                        pass
                                if len(Haldane_dict) == 4:
                                    rxn_dicts.append(Haldane_dict)
                                    Haldane_params.extend(list(Haldane_dict.values()))
                            if len(rxn_dicts) > 0:
                                Haldane_rxn_dicts[rxn_key] = rxn_dicts
                                Haldane_rxns.append(rxn_key)
                except:
                    pass        
        
        # Make it clear what the program has detected.
        prnt_msg('\nglobal parameters: ' + str(glob_par_dict) +'\n')
        prnt_msg('\nkinetic parameters: ' + str(kin_par_dict) + '\n')
        prnt_msg('\nkinetic parameter mutation list: ' + str(kin_mut_par_selection) + '\n')
        prnt_msg('\nHaldane reaction dicts: ' + str(Haldane_rxn_dicts) + '\n')
        
        # Read steady state output file.
        with open(ssout_file) as file:
            sstext = file.read()
        # Convert species section to dataframe.
        spec_m = re.search(r'Species.+?(?=\n\n)',sstext,re.DOTALL)
        spec_df = pd.DataFrame(
            [x.split('\t') for x in spec_m.group(0).split('\n')])
        # Model species names.
        spec_names = list(spec_df.iloc[1:,0])
        # Model species labels.
        spec_labels = [re.sub(r'\{.*?\}','',sn) for sn in spec_names]
        # Species concentrations labels.
        spec_concs_labels = ['conc_'+sn for sn in spec_names]
        # Species concentrations.
        spec_concs = [
            float(spec_df[spec_df.iloc[:,0]==sn][1]) for sn in spec_names]
        # Species particle numbers.
        spec_part_nums = [
            float(spec_df[spec_df.iloc[:,0]==sn][3]) for sn in spec_names]
        # number of fluxes
        NUM_FLUXES = len(spec_names)
        # Check for steady state calculation - end program if failure.
        if re.search(
            r'No steady state with given resolution was found!',
            sstext) != None:
            # Model found no steady state.
            prnt_msg('Steady state cannot be calculated. '+
                     'Another model must be selected.')
            exit()
        if re.search(
            r'Summary:\nThis state is asymptotically stable',
            sstext) == None:
            # Model found no stable solution.
            prnt_msg('No stable solution found.'+
                     'Another model must be selected.')
            exit()
        # Extract reaction fluxes.
        rxn_m = re.search(r'Reaction.+?(?=\n\n)',sstext,re.DOTALL)
        rxn_df = pd.DataFrame(
            [x.split('\t') for x in rxn_m.group(0).split('\n')])
        # Extensive flux (mmol/s).
        rxn_fluxes = [float(x) for x in rxn_df.iloc[1:,1]]
        # Reaction names.
        rxn_names = list(rxn_df.iloc[1:,0])
        # Subset of reactions on which selection acts.
        selection_flux_dict = {
            selection_flux_name:\
                float(rxn_df[rxn_df[0]==selection_flux_name][1]) \
                    for selection_flux_name in selection_flux_names}
        # Add keq values and species and parameters with value of 0
        # to exclusion from mutation list.
        no_mut_list.extend(list(keq_dict.keys())+spec_labels+zerolist)
        # First row of data dict.
        first_columns = ['fix','gens','fit','sc','pfix','mutants','errors']
        # Mutatable paramters.
        all_pars = list(glob_par_dict.keys())+list(ind_par_dict.keys())+list(kin_par_dict.keys())
        mut_pars = [mp for mp in all_pars if mp not in no_mut_list]

        # Data column labels
        data_labels = first_columns+selection_flux_labels\
            +spec_concs_labels+rxn_names+all_pars
            # +spec_concs_labels+rxn_names+mut_pars
            
        # Data values.
        empty_vals = [None]*(len(first_columns+selection_flux_labels)-1)
        data_vals = [True]+empty_vals+spec_concs+rxn_fluxes+\
            list(glob_par_dict.values())+list(ind_par_dict.values())+list(kin_par_dict.values())

        # Data dictionary.
        data = {k:[v] for k,v in zip(data_labels,data_vals)}
        # Assign attributes to node.
        node.data = dc(data)
        node.selection_flux_dict = dc(selection_flux_dict)
        node.spec_concs = dc(spec_concs)
        node.rxn_fluxes = dc(rxn_fluxes)
        node.glob_par_dict = dc(glob_par_dict)
        node.kin_par_dict = dc(kin_par_dict)
        node.init_conds = dc(init_vals)
        node.spec_part_nums = dc(spec_part_nums)
        node.ind_par_dict = dc(ind_par_dict)

    def find_branches(self,exp_path):
        """
        Parse phylogeny (newick string) to construct tree object.
        
            Parameter:
                exp_path (str): file pathway to experiment folder.
        """
        
        # Make dendropy tree.
        dtree = dendropy.Tree.get(path=newick_filename,schema='newick')
        # Write ascii tree to text file.
        with open(os.getcwd() + exp_path+'ascii_tree.txt','w') as f:
            f.write(dtree.as_ascii_plot())
        # Parse newick string.
        with open(newick_filename) as file:
            # Replace dashes to be recognized as word characters.
            newick_string = file.read().replace('-','_')
        # look for rooting at a node
        try:
            root_node_name = re.search(r'[A-Za-z_\.]+(?=(\;|\,))',
                               newick_string).group(0)
        except:
            # If no node found to be root, 
            # whole string will represent root.
            root_node_name = ''
        # Substring list.
        substrings = newick_string.split(',')
        # Find external nodes.
        # Assign external index (ei) to each substring (ss).
        for ei,ss in enumerate(substrings):
            try:
                new_node = Node()
                name = re.search(r'(\w|\s|\.)+?\:\d+(\.\d+)?(e\-)?(\d+)?',
                                 ss).group(0)
                new_node.name = name.replace('(','').replace(')','')\
                    .replace(',','').replace(';','')
                new_node.type = 'external' if root_node_name != name else 'root'
                # Extract branch lengths if present.
                try:
                    # Branch length is number following colon.
                    new_node.length = float(name[name.index(':')+1:])
                except:
                    pass
                new_node.external_index = ei
                self.branch_list.append(new_node)
            except:
                pass
        # Find internal nodes, which have matching parentheses.
        # Open parenthesis starting indices.
        open_par_inds = [m.span()[0] for m in re.finditer(r'\(',newick_string)]
        for op_ind in open_par_inds:
            new_node = Node()
            new_node.type = 'internal'
            open_par_count = 1
            close_par_count = 0
            # Counter for index of last closed parenthesis.
            lcp_ind = op_ind + 1
            for c in newick_string[op_ind+1:]:
                if c == '(':
                    open_par_count += 1
                elif c == ')':
                    close_par_count += 1
                lcp_ind += 1
                if open_par_count == close_par_count:
                    # Break when matching number of open and close
                    # parentheses found.
                    break 
            # Slice from a ( to a ).
            substring = newick_string[op_ind:lcp_ind]
            new_node.name = substring
            # Find substring index to look for more info.
            substring_start = newick_string.index(substring)
            substring_stop = substring_start + len(substring)
            # Extract branch length - the number after the first colon.
            try:
                length = re.search(r':.+?(\,|\))',
                            newick_string[substring_stop:]).group(0)[1:-1]
                new_node.length = float(length)
            except:
                pass
            # Extract concordance factor - number after newick substring.
            try:
                conc_factor = re.search(r'.+?:',
                            newick_string[substring_stop:]).group(0)[1:-1]
                new_node.conc_factor = float(conc_factor)
            except:
                pass
            self.branch_list.append(new_node)
        # Remove duplicates.
        for branch1 in self.branch_list:
            for branch2 in self.branch_list:
                if branch1.name.strip == branch2.name:
                    self.branch_list.remove(branch2)
        # Sort nodes by string length.
        self.branch_list.sort(key=lambda x: len(x.name),reverse=True)
        # Move root to position 0.
        rootnode = next((n for n in self.branch_list if n.type == 'root'),None)
        if rootnode == None:
            self.branch_list[0].type = 'root'
        else:
            self.branch_list.remove(rootnode)
            self.branch_list.insert(0,rootnode)
        # Assign node number.
        for n,node in enumerate(self.branch_list): 
            node.num = n
        # Branch dict.
        self.branch_dict = {node.num:node for node in self.branch_list}
        # Identify ancestors and descendants.
        for n1 in self.branch_list:
            for n2 in self.branch_list:
                if n1.name in n2.name and n1 != n2:
                    n1.ancestors.append(n2.num)
                    n2.descendants.append(n1.num)
        # Identify parents.
        for node in self.branch_list:
            # Shortest to longest, moving down the tree.
            node.ancestors.sort(reverse=True)
            # Longest to shortest, moving up the tree.
            node.descendants.sort()
            if node.ancestors != []:
                node.parent = node.ancestors[0]
        # Identify sisters and children.
        for n1 in self.branch_list:
            for n2 in self.branch_list:
                if n1.parent == n2.parent and n1 != n2:
                    n1.sister = n2.num
                    n2.sister = n1.num
                elif n1.parent == n2.num:
                    n2.children.append(n1.num)
        ## Set population sizes.
        # If population size list is just one,
        if len(popsizes) == 1 and popsizes != [0]:
            # It applies to all branches.
            for branch in self.branch_list:
                branch.popsize = popsizes[0]
        elif len(popsizes) == len(self.branch_list):
            for branch,p in zip(self.branch_list,popsizes):
                branch.popsize = p
        else:
            prnt_msg('error parsing population size input,'+
                     ' defaulting to population size of 1000 for all branches')
            for branch in self.branch_list:
                branch.popsize = 1000
        # Find cumulative branch lengths.
        for node in self.branch_list[1:]:
            # Sum lengths of all ancestors.
            cum_length = sum([self.branch_dict[n].length for n in [node.num] \
                       + node.ancestors if self.branch_dict[n].length != None])
            node.cum_length = cum_length
        # Make branch info dataframe.
        branch_attributes = ['name','length','cum_length','conc_factor',
                             'type','ancestors','parent','descendants',
                             'children','sister','popsize']
        dfdict = {at:[node.__dict__[at] for node in self.branch_list]\
                   for at in branch_attributes}
        binfodf = pd.DataFrame(dfdict)
        binfodf.index.name = 'no.'
        binfodf.to_excel(os.getcwd() + exp_path + 'prelim_branch_info.xlsx')
        # Collect population size info from excel sheet.
        if popsizes == [0]:
            try:
                input('Enter correct population sizes in prelim_branch_info.xlsx. Press Return when file is updated and closed.')
                tempdf = pd.read_excel(os.getcwd() + exp_path + 'prelim_branch_info.xlsx')
                for branch,popsize in zip(self.bl,tempdf['popsize']):
                    branch.popsize = popsize
            except:
                prnt_msg('error parsing population size input,'+
                     ' defaulting to population size of 1000 for all branches')
                for branch in self.branch_list:
                    branch.popsize = 1000
            # Update dataframe
            dfdict = {at:[node.__dict__[at] for node in self.branch_list]\
                   for at in branch_attributes}
            binfodf = pd.DataFrame(dfdict)
            binfodf.index.name = 'no.'
            binfodf.to_excel(os.getcwd() + exp_path + 'prelim_branch_info.xlsx')

    def populate(self):
        """Set up initial population."""
        global flux_prop_dict, copasi_filename
        global slope_keys, cv_keys, fit_eq_check_labs, eq_check_vals
        if imp_eq_filename != 'None':
            # Import equilibration.
            prnt_msg('importing root population from {}'\
                     .format(imp_eq_filename))
            # Path to imported model.
            import_cps_path = os.getcwd() + '/' + imp_eq_filename \
            + '/equilibration_data/equilibration_final_cps.cps'
            # Read in model.
            with open(import_cps_path,encoding='utf8') as nfile:
                self.branch_dict[0].model = nfile.read()
            # Write as current file - will overwrite user cps input.
            copasi_filename = 'import_{}.cps'.format(imp_eq_filename)
            with open(copasi_filename,'w',encoding='utf8') as ncps:
                ncps.write(self.branch_dict[0].model)
        # # Run file and make steady state output file.
        _ = subprocess.run([copasi_dir_str, copasi_filename, '-s',
                         copasi_filename],capture_output=True)
        # _ = subprocess.run([copasi_dir_str, copasi_filename, '-s',
        #                  '--nologo'],capture_output=True)
        # First parse.
        self.initial_model_parse(self.branch_dict[0])
        if imp_eq_filename != 'None':
            # Extract info from import.
            self.import_equilibrated_root()
        else:
            # Create proportionalization dictionary based 
            # on starting flux value for selection_fluxes.
            flux_prop_dict = {
                fn:sfx*flux_prop_multiplier for fn,sfx in \
                    zip(selection_flux_names,
                    self.branch_dict[0].selection_flux_dict.values())
                    }
            # Calculate fitnesses.
            fits = self.branch_dict[0].calc_fit()
            # Check that fitness is not 0.
            if self.branch_dict[0].popfit == 0:
                prnt_msg('Starting population fitness is 0.')
                prnt_msg('Check that selection fluxes are positive.')
                prnt_msg('Dictionary of starting fluxes: '+str(flux_prop_dict))
                exit()
            if self.branch_dict[0].reset:
                prnt_msg('Cannot calculate fitness')
                exit()
            # Update data dict.
            self.branch_dict[0].data['fit'] = [self.branch_dict[0].popfit]
            for FRXNl,ft in zip(selection_flux_labels,fits):
                self.branch_dict[0].data[FRXNl] = [ft]
        # List of fitness and fluxes.
        eq_check_vals = ['fit'] + rxn_names + spec_concs_labels
        # Create dataframe for fixed fitness and fluxes.
        self.branch_dict[0].fixed_eq_check_vals = pd.DataFrame(
            columns=eq_check_vals)
        # And for slopes and cvs.
        self.branch_dict[0].slopes_cvs = pd.DataFrame(
            columns=[s1+s2 for s1 in ['slope_','cv_'] for s2 in eq_check_vals])

    def simulate(self,node):
        """
        Simulate evolution in population.
        
            Parameter:
                node (node object):
                    branch along which to simulate evolution
        """
        
        global Total_gens,total_gens,eq_gens,copasi_filename
        # Loop over generations.
        gi = 0
        # Root node treated specially.
        if node.type == 'root':
            # Create starting population for root node.
            self.populate()
            # Create counter for simulation progress.
            tgens1 = node.gens
            # Check if equilibration is required.
            if equilibration == 'Y':
                prnt_msg('\nequilibrating root population')
                if eq_gens == 0:
                    # Maximum of 1e6 generations to equilibrate.
                    node.gens = Tgens1 = node.gens + 1e6
                else:
                    # User-defined number of generations.
                    imp_eq_gens = node.gens
                    gi = imp_eq_gens
                    node.gens = Tgens1 = eq_gens + imp_eq_gens
            else:
                prnt_msg('not equilibrating root population')
                node.gens = 0
            # Set fixation count to imported value.
            node.fix_count = node.imp_fix_count
            # Booleans for detecting equilibrium.
            fit_eq_detected = flux_eq_detected = False
            # Flatness check boolean list.
            flatness_checks = [False] * len(eq_check_vals)
            # Length of flatness checks to meet threshold.
            flat_check_thresh = math.floor(len(flatness_checks)*0.8)
            # Boolean for finding threshold,
            two_perc_rule_thresh_found = False
            # And for equilibrium detection.
            eq_detected = False
        else:
            # Write relevant model to file.
            node.update_cps()
            # Dummy vars for counters.
            Tgens1 = Total_gens
            tgens1 = total_gens
        # This function must leave a node with a viable model.
        model_at_last_fixation = node.model
        # Loop until required generations or equilibraton reached.
        while gi < node.gens:
            # Increment counter, reset the reset and errors.
            gi += 1
            tgens1 += 1
            node.reset = False
            node.errors = []
            # Save old values for reverting.
            old_fit = node.popfit
            old_selection_flux_dict = dc(node.selection_flux_dict)
            old_init_conds = dc(node.init_conds)
            old_spec_concs = dc(node.spec_concs)
            old_rxn_fluxes = dc(node.rxn_fluxes)
            old_spec_part_nums = dc(node.spec_part_nums)
            old_glob_par_dict = dc(node.glob_par_dict)
            old_kin_par_dict = dc(node.kin_par_dict)
            old_ind_par_dict = dc(node.ind_par_dict)
            old_model = node.model
            # (Possibly) introduce mutations to model parameters.
            node.mutate()
            # If a mutation occurs, determine fixation.
            if len(node.mutants) > 0:
                node.mut_count += 1
                # Write new mutations to model.
                node.update_cps()
                # Run steady state calculation and update model.
                # _ = subprocess.run([copasi_dir_str, copasi_filename,
                #      '-s','--nologo'],capture_output=True)
                _ = subprocess.run([copasi_dir_str, copasi_filename, '-s',
                    copasi_filename],capture_output=True)
                # Read model updates back into python.
                with open(copasi_filename,encoding='utf8') as cpsfile:
                    node.model = cpsfile.read()
                # Parse the steady state output file.
                node.parse_ssout()
                # Calculate fitness.
                fits = node.calc_fit()
                # Determine probability of fixation.
                sel_coeff,prob_fix,fixation = node.calc_prob_fix(old_fit)
                # Count reset and get error data.
                if node.reset:
                    node.rev_count += 1
                    fixation = False
                    errors = node.errors
                else:
                    errors = None
                # Update data dict.
                data_vals = [fixation,gi,node.popfit,sel_coeff,
                             prob_fix,node.mutants,errors] + fits \
                            + node.spec_concs+node.rxn_fluxes \
                            + list(node.glob_par_dict.values()) \
                            + list(node.ind_par_dict.values()) \
                            + list(node.kin_par_dict.values())
                for k,v in zip(data_labels,data_vals):
                    node.data[k].append(v)
                if not fixation:
                    # Reset all values and model.
                    node.popfit = old_fit
                    node.selection_flux_dict = dc(old_selection_flux_dict)
                    node.init_conds = dc(old_init_conds)
                    node.spec_concs = dc(old_spec_concs)
                    node.rxn_fluxes = dc(old_rxn_fluxes)
                    node.spec_part_nums = dc(old_spec_part_nums)
                    node.glob_par_dict = dc(old_glob_par_dict)
                    node.kin_par_dict = dc(old_kin_par_dict)
                    node.ind_par_dict = dc(old_ind_par_dict)
                    node.model = old_model
                    with open(copasi_filename,'w',encoding='utf8') as file:
                        file.write(node.model)
                    # Rerun model.
                    # _ = subprocess.run([copasi_dir_str, copasi_filename, 
                    #     '-s','--nologo'],capture_output=True)
                    _ = subprocess.run([copasi_dir_str, copasi_filename, '-s',
                    copasi_filename],capture_output=True)
                else:
                    # Increment counter.
                    node.fix_count += 1
                    # Set model.
                    model_at_last_fixation = node.model
                    # Equilibrium detection for root node.
                    if node.type == 'root':
                        # Add fixation values for equilibrium check.
                        node.fixed_eq_check_vals.loc[node.fix_count-1] = \
                            [node.popfit] + node.rxn_fluxes + node.spec_concs
                        # Fixation threshold check.
                        df_len = len(node.fixed_eq_check_vals)
                        # Find slope of line of best fit
                        # and cv for fitness and reaction fluxes.
                        if df_len % eq_check == 0:
                            # Empty lists for slopes and cvs.
                            slopes = []
                            cvs = []
                            # Empty array of length of fixations to check.
                            X = np.arange(eq_check)
                            # Loop over each fit/flux value to check.
                            for f in eq_check_vals:
                                # Select last eq_check number of values.
                                Y = node.fixed_eq_check_vals.loc\
                                    [df_len-eq_check:df_len,f]
                                # Find slope and cv.
                                slopes.append(abs(np.polyfit(X,Y,1)[0]))
                                cvs.append(calc_cv(Y))
                            # Update slopes/cvs dataframe.
                            windows = len(node.slopes_cvs)
                            node.slopes_cvs.loc[windows] = slopes + cvs
                            # Check for fitness and majority flux equilibrium.
                            if windows > window_check:
                                df_len = len(node.slopes_cvs)
                                # Empty array of length of fixations to check.
                                zeros = np.zeros(window_check)
                                # Empty list for window check booleans.
                                flatness_checks = []
                                # Loop over each fit/flux value,
                                # select last window_check number
                                # of values for slope and cvs,
                                # and check nearness to 0.
                                for f in eq_check_vals:
                                    if f == 'fit':
                                        slope_tol = 1e-5
                                        cv_tol = 1e-4
                                    else:
                                        slope_tol = 1e-3
                                        cv_tol = 0.1
                                    c = 'slope_' + f
                                    slopes = node.slopes_cvs.loc[
                                        df_len-window_check:df_len,c]
                                    slope_win_check = np.isclose(slopes,zeros,
                                                                atol=slope_tol)
                                    c = 'cv_' + f
                                    cvs = node.slopes_cvs.loc[
                                        df_len-window_check:df_len,c]
                                    cv_win_check = np.isclose(cvs,zeros,
                                                              atol=cv_tol)
                                    # If slopes and cvs are close to 0 for
                                    # the last window_check number of windows, 
                                    # then indicate that flatness (equilibrium) 
                                    # has been detected for this fit/flux value.
                                    if sum(slope_win_check) == \
                                        sum(cv_win_check) == window_check:
                                        # Flat enough.
                                        flatness_checks.append(True)
                                        # Fitness equilibrium 
                                        # detected separately.
                                        if f == 'fit' and not fit_eq_detected:
                                            fit_eq_detected = True
                                            prnt_msg(('\nfitness equilibrium '
                                                      + 'detected at' +
                                                       ' generation {}\n')\
                                                        .format(gi))
                                    else:
                                        flatness_checks.append(False)
                                # Check proportion of fit/flux values 
                                # that have flattened out.
                                # if sum(flatness_checks)/len(flatness_checks) \
                                #     >= 0.70 and not flux_eq_detected:
                                if sum(flatness_checks) >= flat_check_thresh \
                                    and not flux_eq_detected:
                                    # Majority flux equilibrium reached.
                                    flux_eq_detected = True
                                    prnt_msg(('\nmajority flux equilibrium '
                                              + 'detected at generation {}\n')\
                                                .format(gi))
                                # Trigger break out of loop.
                                if fit_eq_detected and flux_eq_detected \
                                    and not eq_detected:
                                    eq_detected = True
                                    # Keep equilibrating for half again
                                    # as many gens as have transpired.
                                    if gi < 500_000:
                                        node.gens = int(gi*2)
                                    # Switch continuous print statement.
                                    eq_gens = imp_eq_gens = 0
                                    prnt_msg(('\nequilibrium detected '
                                            + 'at generation {}\n').format(gi))
                        # Find no. generations concordant with 2% rule.
                        if not two_perc_rule_thresh_found:
                            # Create dataframe of mutation proposal counts.
                            prop_count_df = pd.DataFrame(par_prop_counts,
                                                         index=[0])
                            # Identify Vmax parameters and find mean of counts.
                            vmax_cols = [c for c in prop_count_df.columns \
                                         if re.search(r'(\_|^)v\w*(\_|$)',
                                                      c,re.IGNORECASE) != None]
                            vmax_prop_mean = prop_count_df[
                                vmax_cols].mean(axis=1)[0]
                            # Same with non-Vmax parameters.
                            other_par_prop_mean = np.mean([sum([
                                prop_count_df.loc[0,c] for c in \
                                prop_count_df.columns if \
                                re.match(r'{}_'.format(r),c) != None 
                                and c not in vmax_cols]) for r in rxn_keys])
                            # Average of means must be at least 7.
                            if (vmax_prop_mean+other_par_prop_mean)/2 >= 7:
                                # Establish threshold from 
                                # current generation number.
                                node.two_perc_rule_gen_thresh = gi
                                two_perc_rule_thresh_found = True
                                prop_count_df.to_excel(os.getcwd()+exp_path
                                                       +'par_prop_count.xlsx')
                                prnt_msg(('\nNo. generations that results in '
                                          + 'adequate no. proposals: {}{}')\
                                            .format(gi,' '*20))

            if node.type == 'root' and eq_gens == 0:    
                # Continuous print statement to display progress.
                print(('generation {}, fixations: {}, resets: {},'
                    + ' fit: {}, equilibration: {}/{} values{}').format(
                        gi,node.fix_count,node.rev_count,node.popfit,
                        sum(flatness_checks),flat_check_thresh,' '*20),
                        end='\r')
            elif node.type == 'root' and eq_gens != 0:
                print(('generation {}/{}, fixations: {}, resets: {},'
                    + ' fit: {}, progress: {}%{}').format(gi,node.gens,
                    node.fix_count,node.rev_count,node.popfit,
                    round((gi-imp_eq_gens)/(eq_gens)*100,3),
                    ' '*20),end='\r')
            else:
                # Continuous print statement to display progress.
                print(('generation {}/{}, fixations: {}, resets: {},'
                    + ' fit: {}, progress: {}%{}')\
                        .format(gi,node.gens,node.fix_count,node.rev_count,
                                node.popfit,round(tgens1/Tgens1*100,3),
                                ' '*20),end='\r')
                    
        # Keep track of total generations over branching simulation.
        total_gens = tgens1
        # Reset model to last fixation.
        node.model = model_at_last_fixation
        with open(copasi_filename,'w',encoding='utf8') as file:
            file.write(node.model)
        # Assign generation number to root node.
        if node.type == 'root':
            if imp_eq_filename != 'None':
                node.gens = imp_gens + gi
            else:
                node.gens = gi
            if branch_length_type == 'mya' and \
                node.two_perc_rule_gen_thresh == 0:
                # Just fill in a number for now.
                # It is very unlikely that the above condition
                # is not met.
                node.two_perc_rule_gen_thresh = 1000

    def find_gens_per_branch(self):
        """Determine ratio to convert branch length
          to generations per branch."""
        # Autodetection based on 2% rule threshold.
        if sim_gens == 0:
            # Branch length measurement type-dependent multiplier.
            mult = 0.01
            if branch_length_type == 'subs per site':
                # Convert branch lengths to percentages.
                mult = 100
            # All nodes but root.
            for node in self.branch_list[1:]:
                # Follow 2% rule using detected threshold.
                node.gens = round(self.branch_dict[0].two_perc_rule_gen_thresh\
                                  *node.length*mult)
        # Longest line generations entered manually.
        else:
            # Calculate maximum cumulative branch length.
            max_cum_length = max(
                [node.cum_length for node in self.branch_list[1:]])
            # Determine ratio of generations to length.
            self.GEN_TO_LENGTH_RATIO = sim_gens / max_cum_length
            # Assign generation numbers accordingly.
            for node in self.branch_list[1:]:
                node.gens = round(self.GEN_TO_LENGTH_RATIO*node.length)

    def branch(self,node):
        """
        Simulate recursively through tree.
        
            Parameter:
                node (node object):
                    The next node to simulate (initially, root).
        """
        
        global Total_gens,total_gens
        if node.type != 'root':
            if node.gens != 0:
                prnt_msg('simulating {} node {}'.format(node.type,node.num))
                self.simulate(node)
                prnt_msg(('finished branch {} after {} generations with '
                          + '{} mutations, {} fixations, and {} resets;'
                          + ' final fit: {}{}').format(node.num,node.gens,
                            node.mut_count,node.fix_count,
                            node.rev_count,node.popfit,' '*10))
            else:
                prnt_msg('branch {} has length 0'.format(node.num))
        else:
            # Total generations to simulate across branches.
            Total_gens = sum([n.gens for n in self.branch_list[1:]])
            total_gens = 0
            prnt_msg('branching root population fit: {}'.format(node.popfit))
            prnt_msg('total generations to simulate: {}\n'.format(Total_gens))
        for childno in node.children:
            # Pass on attributes to child.
            self.branch_dict[childno].inherit(node)
            # Recurse.
            self.branch(self.branch_dict[childno])

    def trace_lines(self):
        # Copy external nodes as lines.
        self.line_list = [dc(node) for node in self.branch_list \
                           if node.type == 'external']
        # Sort by external index.
        self.line_list.sort(key=lambda x: x.external_index)
        self.line_dict = {node.num:node for node in self.line_list}
        # List of lists of ancestors excluding root.
        anc_num_lists = [node.ancestors[:-1] for node in self.line_list]
        # Concatenate branch data into lines.
        for node,anc_nums in zip(self.line_list,anc_num_lists):
            # If line does not start at the root,
            if anc_nums != []:
                # remove first datum to avoid redundancy
                # with last datum of parent.
                for info in data_labels:
                    node.data[info] = node.data[info][1:]
            # Add branch num to dicts and assign cum_length to length.
            node.data['branch no.'] = [node.num] * len(node.data['fit'])
            node.length = node.cum_length
            # Concatenate all but first datum to avoid redundancy,
            # except for most distant ancestor.
            for ancnum in anc_nums:
                if ancnum != min(anc_nums):
                    node.data['branch no.'] = \
                        [ancnum]*(len(self.branch_dict[ancnum].data['fit'])-1) \
                        + node.data['branch no.']
                else:
                    node.data['branch no.'] = \
                        [ancnum]*len(self.branch_dict[ancnum].data['fit']) \
                        + node.data['branch no.']
                for info in data_labels:
                    if ancnum != min(anc_nums):
                        node.data[info] = self.branch_dict[ancnum].data[info][1:] \
                              + node.data[info]
                    else:
                        node.data[info] = self.branch_dict[ancnum].data[info] \
                              + node.data[info]
                node.fix_count += self.branch_dict[ancnum].fix_count
                node.mut_count += self.branch_dict[ancnum].mut_count
                node.rev_count += self.branch_dict[ancnum].rev_count
                node.gens += self.branch_dict[ancnum].gens

    def write_final_info(self,nodes,path,info_type,no=''):
        """
        Record final info for a node.

            Parameters:
                nodes (list):
                    list of node objects
                path (str):
                    pathway to folder
                info_type (str):
                    type of info to record
                no (str=''):
                    node number string for files
        """

        with open(path + info_type.lower() 
                  + '{}_final_info.txt'.format(no),'w') as file:
            for node in nodes:
                if info_type == 'Equilibration':
                    file.write(info_type + ' info\n\n')
                    file.write('newick string: ' + node.name + '\n\n')
                    file.write('flux scaler dict: ' 
                               + str(flux_prop_dict) + '\n\n')
                    if node.fix_count > 0:
                        # Add 1 because negative indexing starts at 1.
                        fixind = node.data['fix'][::-1].index(True) + 1
                    else:
                        fixind = 1
                    # Final row dict - save as dataframe for reading import.
                    final_row_dict = {info:[node.data[info][-fixind]] \
                                       for info in data_labels}
                    final_row_df = pd.DataFrame(final_row_dict)
                    final_row_df.to_excel(path + info_type.lower() 
                                          + '_final_row.xlsx',index=False)
                    # Number of generations required for about 2% change.
                    file.write('No. simulated generations per million years: {}\n\n'.format(node.two_perc_rule_gen_thresh))
                    # Also write string to text file.
                    file.write('last row of dd: ' 
                               + str([node.data[info][-fixind] \
                                      for info in data_labels]) + '\n\n')
                    with open(path + info_type.lower() 
                              + '_final_cps.cps','w') as ncpsfile:
                        ncpsfile.write(node.model)
                    # Write Haldane dict.
                    global Haldane_rxn_dicts
                    file.write('Haldane dicts: '+str(Haldane_rxn_dicts)+'\n\n')
                else:
                    file.write('info for ' + info_type.lower() 
                               + ' ' + str(node.num) + '\n\n')
                    file.write('newick substring: ' + node.name + '\n\n')
                    cpsfilepath = path + 'cps_files/'
                    # Make folder for cps files.
                    if cpsfilepath not in str(subprocess.run(['ls','-d',
                                cpsfilepath],capture_output=True).stdout):
                        # Run command to create directory.
                        subprocess.run(['mkdir',cpsfilepath])
                    with open(cpsfilepath + info_type.lower() 
                        + '{}_final_cps.cps'.format(node.num),'w') as ncpsfile:
                        # Write new cps file.
                        ncpsfile.write(node.model)
                file.write('no. generations: ' + str(node.gens) + '\n')
                file.write('no. fixations: ' + str(node.fix_count) + '\n')
                file.write('no. mutations: ' + str(node.mut_count) + '\n')
                file.write('no. reversals: ' + str(node.rev_count) + '\n\n')
                for sfn in selection_flux_names:
                    file.write('final {}: '.format(sfn) 
                               + str(node.selection_flux_dict[sfn]) + '\n')
                file.write('final fitness: ' + str(node.popfit) + '\n\n')         

    def plot_fitness(self,nl,path,itype):
        """
        Graph fitness info.

            Parameters:
                nl (list):
                    List of nodes whose fluxes to plot.
                path (str):
                    Folder pathway for png files.
                itype (str):
                    Type of info (Equilibration, Line, or Branch).
        """

        # Lists of file/graph components for loop.
        titleparts = ['Population Fitness'] + selection_flux_labels
        labelparts = ['fitness'] * (len(selection_flux_names)+1)
        fileparts = ['fit'] + selection_flux_labels
        # Plot fitness per node.
        for F,f,k in zip(titleparts,labelparts,fileparts):
            plt.rcParams["figure.figsize"] = (14,14)
            for node in nl:
                plt.plot(node.data[k])
            if len(nl) > 1:
                plt.legend([n.num for n in nl],bbox_to_anchor=(1,1),
                           ncol=len(nl)//50+1)
            plt.title('{} {}'.format(itype,F),fontsize=24)
            plt.xlabel('fixations',fontsize=20)
            plt.ylabel(f,fontsize=20)
            plt.savefig(path+'{}_{}.png'.format(itype.lower(),k),
                        bbox_inches='tight')
            plt.rcParams["figure.figsize"] = \
                plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()
        # For root node, plot all fitnesses, slopes and cvs.
        if itype == 'Equilibration':
            # Fitnesses.
            plt.rcParams["figure.figsize"] = (14,14)
            for f in ['fit'] + selection_flux_labels:
                if f == 'fit':
                    plt.plot(node.data[f],linewidth=2.75)
                else:
                    plt.plot(node.data[f])
            plt.legend(['population fitness'] + 
                       [F + ' fitness' for F in selection_flux_names])
            plt.title('Fitnesses',fontsize=24)
            plt.xlabel('fixations',fontsize=20)
            plt.ylabel('fitness',fontsize=20)
            plt.savefig(path+'all_fits.png',bbox_inches='tight')
            plt.rcParams["figure.figsize"] = \
                plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()
            # Slopes.
            plt.rcParams["figure.figsize"] = (14,14)
            plt.plot(node.slopes_cvs['slope_fit'])
            plt.legend(selection_flux_labels)
            plt.title('Slope of population fitness over {}-fixation windows'.\
                      format(eq_check),fontsize=24)
            plt.xlabel('{}-fixation windows'.format(eq_check),fontsize=20)
            plt.ylabel('best-fit line slope',fontsize=20)
            plt.savefig(path+'equilibration_fitness_slopes.png',
                        bbox_inches='tight')
            plt.rcParams["figure.figsize"] = \
                plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()
            plt.rcParams["figure.figsize"] = (14,14)
            # CVs.
            plt.plot(node.slopes_cvs['cv_fit'])
            plt.legend(selection_flux_labels)
            plt.title('CVs of population fitness over {}-fixation windows'.\
                      format(eq_check),fontsize=24)
            plt.xlabel('{}-fixation windows'.format(eq_check),fontsize=20)
            plt.ylabel('coefficient of variation',fontsize=20)
            plt.savefig(path+'equilibration_fitness_cvs.png',
                        bbox_inches='tight')
            plt.rcParams["figure.figsize"] = \
                plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()
            # Write dataframe of slopes and CVs.
            node.slopes_cvs.to_excel(
                path+'equilibration_fitness_fluxes_slopes_cvs.xlsx')

    def plot_species_and_fluxes(self,nl,path,itype):
        """
        Plot all species concentrations and 
        reaction fluxes as png files in separate folders.

            Parameters:
                nl (list):
                    List of nodes whose fluxes to plot.
                path (str):
                    Folder pathway for png files.
                itype (str):
                    Type of info (Equilibration, Line, or Branch).
        """
        # Folder pathways - create if absent.
        flux_path = path + 'reaction_fluxes/'
        if flux_path not in str(subprocess.run(['ls','-d',flux_path],
                                               capture_output=True).stdout):
            subprocess.run(['mkdir',flux_path])
        spec_path = path + 'species_initial_concs/'
        if spec_path not in str(subprocess.run(['ls','-d',spec_path],
                                               capture_output=True).stdout):
            subprocess.run(['mkdir',spec_path])
        # Plot.
        for folder_path, param_list in zip([flux_path,spec_path],
                                           [rxn_names,spec_concs_labels]):
            for param in param_list:
                plt.rcParams["figure.figsize"] = (14,14)
                for node in nl:
                    plt.plot(node.data[param])
                plt.xlabel('fixations',fontsize=10)
                plt.ylabel(param,fontsize=10)
                if itype == 'Equilibration':
                    plt.title('{} over Equilibration'.format(param),
                              fontsize=14)
                    plt.savefig(folder_path+'{}_equilibration.png'.format(param),
                                bbox_inches='tight')
                else:
                    plt.title('{} {}'.format(itype,param),fontsize=14)
                    plt.legend([node.num for node in nl],bbox_to_anchor=(1,1),
                            ncol=len(nl)//50+1)
                    plt.savefig(folder_path+'{}_{}.png'.format(itype.lower(),param),
                                bbox_inches='tight')
                plt.rcParams["figure.figsize"] = \
                    plt.rcParamsDefault["figure.figsize"]
                plt.clf()
                plt.close()

    def plot_per_node(self,nl,path,itype):
        """
        Write bar graphs for various node attributes.

            Parameters:
                nl (list):
                    List of nodes whose fluxes to plot.
                path (str):
                    Folder pathway for png files.
                itype (str):
                    Type of info (Equilibration, Line, or Branch).
        """
        
        # File/graph components for loop.
        title_parts = ['Fitness','Generations','Fixations','Length',
              'Cumulative Length'] \
                + ['Flux ({})'.format(fp) for fp in selection_flux_names]
        ylabels = ['fitness','generations','fixations','length',
                   'cumulative length'] \
                    +['flux (mmol/l/s)']*len(selection_flux_names)
        file_parts = ['fit','gens','fixs','lens','clens'] \
         +['{}_{}'.format(i+1,fp) for i,fp in enumerate(selection_flux_labels)]
        fits = [node.popfit for node in nl]
        gens = [node.gens for node in nl]
        fixes = [node.fix_count for node in nl]
        lens = [node.length for node in nl]
        clens = [node.cum_length for node in nl]
        data_lists = [fits,gens,fixes,lens,clens]
        fitness_determining_fluxes = [
            [node.data[fp][-1] for node in nl] for fp in selection_flux_labels]
        data_lists.extend(fitness_determining_fluxes)
        for title_part,ylabel,data_list,file_part in \
            zip(title_parts,ylabels,data_lists,file_parts):
            # Plot bar graphs.
            plt.rcParams["figure.figsize"] = (12,12)
            plt.bar([n.num for n in nl],data_list)
            plt.title('{} {}'.format(itype,title_part),fontsize=15)
            plt.xticks([n.num for n in nl])
            plt.xlabel(itype.lower(),fontsize=12)
            plt.ylabel(ylabel,fontsize=12)
            plt.savefig(path+'{}_{}_bar.png'.format(itype.lower(),file_part),
                        bbox_inches='tight')
            plt.rcParams["figure.figsize"] = \
                plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()

    def graphpars(self,nl,path,itype):
        """
        Graph parameters for all nodes in input list.

            Parameters:
                nl (list):
                    List of nodes whose fluxes to plot.
                path (str):
                    Folder pathway for png files.
                itype (str):
                    Type of info (Equilibration, Line, or Branch).
        """
        
        # Folder pathway - create if absent.
        par_path = path + '/parameters/'
        if par_path not in str(subprocess.run(['ls','-d',par_path],
                                              capture_output=True).stdout):
            subprocess.run(['mkdir',par_path])
        xlabel = 'Fixations'
        itype_label = itype.lower()
        # Avoid plotting flat lines by exluding certain parameters.
        par_labels = [par for par in mut_pars \
                 if par not in no_mut_list + zerolist + no_mut_list]
        # Plot 1 graph per parameter, len(nl) nodes per graph.
        for par in par_labels:
            plt.rcParams["figure.figsize"] = (14,14)
            for node in nl:
                plt.plot(node.data[par])
            plt.ylabel(par,fontsize=18)
            plt.xlabel(xlabel,fontsize=18)
            if itype == 'Equilibration':
                plt.title('{} during Equilibration'.format(par),fontsize=24)
                plt.savefig(par_path + 'root_{}.png'.format(par),
                            bbox_inches='tight')
            else:
                plt.title('{} {}'.format(itype_label,par))
                plt.legend([node.num for node in nl],
                           bbox_to_anchor=(1,1),ncol=len(nl)//50+1)
                plt.savefig(par_path + '{}_{}.png'.format(itype_label,par),
                            bbox_inches='tight')
            plt.rcParams["figure.figsize"] = \
                plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()

    def record_datatables(self,nl,path,itype,nsim=0,gen=True):
        """
        Write generational and final datatables as excel files.

            Parameters:
                nl (list):
                    List of nodes whose fluxes to plot.
                path (str):
                    Folder pathway for png files.
                itype (str):
                    Type of info (Equilibration, Line, or Branch).
                nsim (int=0):
                    Simulation number.
                gen (bool=True):
                    Indicates whether to record all generational data.
                    (False for branches to avoid redundancy.)
        """
        
        global mostvals
        # Folder of excel files of generational data for each node.
        if len(nl) > 1 and gen:
            gdpath = path + 'generational_' + itype.lower() + '_data/'
            if gdpath not in str(subprocess.run(['ls','-d',gdpath],
                                                capture_output=True).stdout):
                subprocess.run(['mkdir',gdpath])
        else:
            # No need for separate folder for just one file.
            gdpath = path
        # Columns.
        cols = ['fixed','generation','fitness','selection coef','PoF',
                'mutants','errors'] + selection_flux_labels + \
                    spec_concs_labels + rxn_names + all_pars
                    # spec_concs_labels + rxn_names + mut_pars
        # Select values.
        mostvals = ['fit'] + selection_flux_labels + spec_concs_labels + \
            rxn_names + mut_pars
        # Extra branch column for lines.
        if itype == 'Line':
            cols.append('branch no.')
        if itype != 'Equilibration':
            morecols = ['name','length','generations','fixations','mutations']
            # pre-final dataframe dict.
            preFdfd = {k:[] for k in morecols + mostvals}
            # pre-initial dataframe dict.
            preIdfd = {k:[] for k in mostvals}
        for node in nl:
            gdf = pd.DataFrame(node.data)
            gdf.columns = cols
            if gen:
                def splitfile(df,node_num):
                    """
                    Subfunction to avoid writing excessively large
                    excel files.

                        Parameters:
                            df (pd.DataFrame):
                                The data frame to split.
                            node_num (int):
                                Node number.
                    """
                    # Split threshold.
                    maxrows = 500000
                    # Number of excel files needed.
                    num_xlsx = math.ceil(df.shape[0]/maxrows)
                    node_num = '' if node_num == 0 else str(node_num)
                    if num_xlsx == 1:
                        df.to_excel(gdpath+'{}_data.xlsx'.\
                                    format(itype.lower()+node_num))
                    else:
                        for xlsx_file in range(num_xlsx):
                            df.iloc[xlsx_file*maxrows:(xlsx_file+1)*maxrows].\
                                to_excel(gdpath+'{}_data_part{}.xlsx'\
                                .format(itype.lower()+node_num,xlsx_file+1))
                if itype == 'Equilibration':
                    # If equilibration was imported, 
                    # fixation index doesn't start at 0.
                    gdf.index = range(node.imp_fix_count,
                                      node.imp_fix_count+len(gdf))
                    gdf.index.name = 'mutations'
                    splitfile(gdf,node.num)
                    return
                else:
                    gdf.index.name = 'mutations'
                    splitfile(gdf,node.num)
            # Find last fixation.
            if node.fix_count > 0:
                # Find fixation index (last mutation that fixed)
                # by reversing 'fix' column and indexing the first True.
                # Add 1 because negative indexing starts at 1.
                fixind = node.data['fix'][::-1].index(True) + 1
            else:
                # If there are no parental fixations, 
                # just index the last row.
                fixind = 1
            # Accrue initial and final values for next steps.
            for info in mostvals:
                preIdfd[info].append(node.data[info][0])
                preFdfd[info].append(node.data[info][-fixind])
            # Collect for final node datatable.
            for col2,ndatum in zip(morecols,[node.name,node.length,node.gens,
                                node.fix_count,len(node.data['fit']),
                                node.mut_count-node.fix_count]):
                preFdfd[col2].append(ndatum)
        # Excel file for final data.
        fdf = pd.DataFrame(preFdfd)
        fdf.columns = morecols + ['fitness'] + mostvals[1:]
        fdf.index = [n.num for n in nl]
        fdf.index.name = itype.lower()
        fdf.to_excel(path+'final_{}_data.xlsx'.format(itype.lower()))
        # Percent differences from start values and heatmap.
        Fpddf = fdf[['fitness']+mostvals[1:]]
        Spddf = pd.DataFrame(preIdfd)
        Spddf.columns,Spddf.index = Fpddf.columns,Fpddf.index
        Dpddf = Fpddf.subtract(Spddf)
        RCdf = Dpddf.divide(Spddf)
        PDdf = RCdf.multiply(100)
        if itype == 'Branch':
            branch_dfs.append(PDdf)
        elif itype == 'Line':
            line_dfs.append(PDdf)
        PDdf.to_excel(path+itype.lower()+'_percent_diffs.xlsx')
        # Normalize percent differences for graphing.
        remcols = []
        # Counts for diverging and changing parameters.
        DP,CP = 0,0
        # Find max and min for each column.
        for c in range(PDdf.shape[1]):
            mx = max(PDdf.iloc[:,c])
            mn = min(PDdf.iloc[:,c])
            # Remove from heatmap if nonchanging or unworkable (inf).
            if mx == mn or mx == np.inf or mn == -1*np.inf:
                remcols.append(c)
            # Determine if parameter diverges and changes.
            try:
                if mx > 0 and mn < 0:
                    DP += 1
                if mx != mn:
                    CP += 1
            except:
                pass
            else:
                # Find largest magnitude in column.
                colmax = max(abs(mx),abs(mn))
                # Normalize each row value if possible.
                for r in range(PDdf.shape[0]):
                    try:
                        PDdf.iloc[r,c] = PDdf.iloc[r,c]/colmax
                    except:
                        PDdf.iloc[r,c] = np.nan
            # Don't graph nothing columns.
            if set(np.isnan(PDdf.iloc[:,c])) == {True}:
                remcols.append(c)
        # Write normalized percent differences.
        PDdf.to_excel(path+itype.lower()+'_normalized_percent_diffs.xlsx')
        # Remove columns with no differences or infinite values.
        PDdf = PDdf.drop(PDdf.iloc[:,remcols],axis=1)
        # Null column filter.
        PDdf = PDdf.dropna(axis=1,how='all')
        # Write heatmap values.
        PDdf.to_excel(path+itype.lower()+'_heatmap_values.xlsx')
        # Indicate level of systematic movement.
        try:
            prnt_msg(('There are {} diverging parameters among {} ' + \
                     'total changing parameters with {} binding constants')\
                        .format(DP,CP,len(binding_constants)))
        except:
            pass
        # Matching labels.
        mostvals2 = [l for l in mostvals if mostvals.index(l) not in remcols]
        pdarray = np.asarray(PDdf)
        hmd = pdarray.astype('float')
        # Heatmaps in two color schemes.
        for col_sch in ['gnuplot2','PiYG']:
            sns.set(font_scale=1)
            fig, ax = plt.subplots(figsize=(36,22))
            sns.heatmap(hmd,yticklabels=[n.num for n in nl],
                        xticklabels=mostvals2,linewidth=0.5,cmap=col_sch,ax=ax)
            # Title includes simulation number if nsim > 1.
            if nsim > 1:
                hm_title = ('Normalized percent change in simulation {} ' + \
                        'values from start to end').format(nsim)
            else:
                hm_title = ('Normalized percent change in simulation ' + \
                        'values from start to end')
            plt.title(hm_title,fontsize=36)
            plt.ylabel(itype,fontsize=26)
            plt.xlabel('Value',fontsize=26)
            plt.savefig(path + 'percent_diff_heatmap_{}.png'.format(col_sch),
                        bbox_inches='tight')
            plt.clf()
            ax.clear()
            fig.clear()
            plt.close()

    def record_equilibration_data(self,root_node,exp_path,gen=False):
        """
        Run all functions required to write equilibration data.

            Parameters:
                root_node (Node):
                    The node object representing the root population.
                exp_path (str):
                    Folder pathway.
                gen (bool=False):
                    Indicates whether to record all generational data.
        """
        
        prnt_msg('\nWriting equilibration data')
        # Full equilibration subdirectory.
        itype = 'Equilibration'
        eqfold = exp_path + 'equilibration_data/'
        fesd = os.getcwd() + eqfold
        if eqfold not in str(subprocess.run(['ls','-d',eqfold],
                                            capture_output=True).stdout):
            subprocess.run(['mkdir',fesd])
        self.write_final_info([root_node],fesd,itype)
        # If equilibration was imported or not started, 
        # there's no generational data.
        if len(root_node.data['fit']) > 2:
            self.record_datatables([root_node],fesd,itype,gen=gen)
            # Probabilities of fixaton histogram.
            plt.rcParams["figure.figsize"] = (12,12)
            plt.hist(root_node.data['pfix'][1:],bins=[x/10 for x in range(10)])
            plt.title('all probabilities of fixation')
            plt.xlabel('value')
            plt.ylabel('frequency')
            plt.savefig(fesd+'equilibration_pfixes.png',bbox_inches='tight')
            plt.rcParams["figure.figsize"] = plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()
            # Remove unfixed mutations for these functions.
            root_node.filter_data_dict()
            self.plot_fitness([root_node],fesd,itype)
            self.plot_species_and_fluxes([root_node],fesd,itype)
            self.graphpars([root_node],fesd,itype)
            prnt_msg('All equilibration data recorded')
        else:
            prnt_msg('Final root node info recorded.')

    def record_node_data(self,nl,sim_path,itype,nsim,gen):
        """
        Run all functions required to record node data
        (for branches and lines).

            Parameters:
                nl (list):
                    List of node objects.
                sim_path (str):
                    Folder pathway of simulation.
                itype (str):
                    Type of info (Branch or Line).
                nsim (int):
                    Simulation number.
                gen (bool):
                    Indicates whether to record all generational data.
                    (False for branches to avoid redundancy.)
        """
        
        prnt_msg('Writing {} data'.format(itype.lower()))
        # Full simulation subdirectory.
        nfold = sim_path + itype.lower() + '_data/'
        fssd = os.getcwd() + nfold
        if nfold not in str(subprocess.run(['ls','-d',nfold],
                                           capture_output=True).stdout):
            subprocess.run(['mkdir',fssd])
        # Attribute list.
        attlist = ['name','length','gens','fix_count','mut_count','rev_count']
        # Mutations, fixations, reversals as datatable.
        node_data_dict = {att:[node.__dict__[att] for node in self.branch_list]
                           for att in attlist}
        node_df = pd.DataFrame(node_data_dict)
        node_df.index.name = 'no.'
        node_df.to_excel(fssd + itype.lower() + '_info.xlsx')
        # Probabilities of fixaton histogram.
        if itype == 'Branch':
            allpfxs = []
            for node in nl + [self.branch_dict[0]]:
                try:
                    allpfxs.extend(node.data['pfix'])
                except:
                    pass
            while None in allpfxs:
                allpfxs.remove(None)
            plt.rcParams["figure.figsize"] = (12,12)
            plt.hist(allpfxs,bins=[x/10 for x in range(10)])
            plt.title('all probabilities of fixation')
            plt.xlabel('value')
            plt.ylabel('frequency')
            plt.savefig(os.getcwd()+sim_path+'allpfixes.png',
                        bbox_inches='tight')
            plt.rcParams["figure.figsize"] = \
                plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()
        # Only nodes with content in data dict.
        subnl = [node for node in nl if node.gens != 0]
        self.plot_per_node(subnl,fssd,itype)
        self.write_final_info(subnl,fssd,itype)
        # More selective - nodes must have some fixations.
        subnl = [node for node in nl if node.fix_count != 0]
        self.record_datatables(subnl,fssd,itype,nsim,gen=gen)
        # Remove unfixed mutations for lines,
        # but leave them for branches.
        if itype == 'Line':
            for node in subnl:
                node.filter_data_dict()
        self.plot_fitness(subnl,fssd,itype)
        self.plot_species_and_fluxes(subnl,fssd,itype)
        self.graphpars(subnl,fssd,itype)
        prnt_msg('{} data recorded'.format(itype))

    def import_equilibrated_root(self):
        """Reload equilibration node info from old simulation."""
        global flux_prop_dict, imp_gens
        # Read in final info txt file.
        eqtxtfile = os.getcwd() + '/' + imp_eq_filename \
            + '/equilibration_data/equilibration_final_info.txt'
        with open(eqtxtfile) as file:
            alltext = file.read()
        # Generations, fixations, mutations, resets, and fitness.
        self.branch_dict[0].gens = imp_gens = int(re.search(
            r'(?<=no. generations: )\d+(?=\n)',alltext).group(0))
        self.branch_dict[0].imp_fix_count = self.branch_dict[0].fix_count =int(
            re.search(r'(?<=no. fixations: )\d+(?=\n)',alltext).group(0))
        self.branch_dict[0].mut_count = int(
            re.search(r'(?<=no. mutations: )\d+(?=\n)',alltext).group(0))
        self.branch_dict[0].rev_count = int(
            re.search(r'(?<=no. reversals: )\d+(?=\n)',alltext).group(0))
        self.branch_dict[0].popfit = float(
            re.search(r'(?<=final fitness: )\d+\.\d+(?=\n)',alltext).group(0))
        # Flux proportion dict.
        flux_prop_dict = {
            k:v for k,v in zip(selection_flux_names,[float(m.group(0)) 
                    for m in re.finditer(r'\-?\d+\.\d+',
                    re.search(r'flux scaler dict:.+\n',alltext).group(0))])
                    }
        # No. generations resulting in about 2% divergence across lines.
        self.branch_dict[0].two_perc_rule_gen_thresh = \
            int(re.search(r'(?<=generations per million years: )\d+(?=\n)',
                          alltext).group(0))
        # Fill first row data dict from dataframe.
        eqddfr = os.getcwd() + '/' + imp_eq_filename \
            + '/equilibration_data/equilibration_final_row.xlsx'
        self.branch_dict[0].data = pd.read_excel(eqddfr).to_dict(orient='list')

def experiment():
    """Run experiment simulating metabolic pathway evolution."""

    global flux_prop_multiplier, mut_change, eq_check, window_check
    global logfile, write_log_file, exp_path
    global branch_dfs, line_dfs, copasi_dir_str

    global prnt_msg,make_runtime_string,calc_cv,analyze_sims
    global extract_parname

    def prnt_msg(S):
        """
        Print string to screen and logfile.

            Parameter:
                S (str): Message to print and append to file.
        """
        print(S)
        if write_log_file:
            with open (logfile,'a') as lf:
                lf.write(S+'\n')

    def make_runtime_string(start_time,stop_time):
        """
        Make runtime component for foldernames.

            Parameters:
                start_time (datetime.time): starting time
                stop_time (datetime.time): end time
            Returns:
                runtime_string (str): edited time difference info
        """
        diff = stop_time - start_time
        runtime = diff.total_seconds()
        if runtime / 60 > 1:
            runtime /= 60
            if runtime / 60 > 1:
                runtime /= 60
                runtime_string = str(round(runtime,1)) + 'hr'
            else:
                runtime_string = str(round(runtime,1)) + 'min'
        else:
            runtime_string = str(round(runtime,1)) + 'sec'
        return runtime_string

    def calc_cv(x):
        """Return coefficient of variation of series/list x."""
        mu = np.mean(x)
        # avoid divide by 0
        if mu == 0:
            return 0
        else:
            return np.std(x) / mu

    def analyze_sims(exp_path):
        """
        Excel files and heatmaps for average percent differences 
        and variance across simulations.

            Parameter:
                exp_path (str):
                    Folder pathway for experiment.
        """        
        
        # Loop over branch and line percent difference lists.
        for pdfl,itype in zip([branch_dfs,line_dfs],['Branch','Line']):
            # Create matrix of lists to stack dataframes.
            nrows,ncols = pdfl[0].shape
            ylabs = list(pdfl[0].index)
            apds = [[[] for j in range(ncols)] for i in range(nrows)]
            for df in pdfl:
                dfal = df.values.tolist()
                for i in range(nrows):
                    for j in range(ncols):
                        apds[i][j].append(dfal[i][j])
            avgpdiffs = pd.DataFrame([[sum(apds[i][j])/len(apds[i][j]) 
                                for j in range(ncols)] for i in range(nrows)])
            varpdiffs = pd.DataFrame([[np.var(apds[i][j]) 
                                for j in range(ncols)] for i in range(nrows)])
            avgpdiffs.columns,avgpdiffs.index,avgpdiffs.index.name = \
                mostvals,ylabs,itype
            varpdiffs.columns,varpdiffs.index,varpdiffs.index.name = \
                mostvals,ylabs,itype
            avgpdiffs.to_excel(os.getcwd() + exp_path 
                + '{}_avgpdiffs_{}_sims.xlsx'.format(itype.lower(),num_sims))
            varpdiffs.to_excel(os.getcwd() + exp_path 
                + '{}_varpdiffs_{}_sims.xlsx'.format(itype.lower(),num_sims))
            for df,dtype in zip([avgpdiffs,varpdiffs],['Averages','Variances']):
                hmdarray = np.asarray(df)
                hmd = hmdarray.astype('float')
                sns.set(font_scale=1)
                fig, ax = plt.subplots(figsize=(36,22))
                sns.heatmap(hmd,yticklabels=ylabs,xticklabels=mostvals,
                            linewidth=0.5,cmap='gnuplot2',ax=ax)
                plt.title(('{} Percent Change {} across {} Simulations' + \
                          ' from Start to End').format(itype,dtype,num_sims),
                          fontsize=36)
                plt.ylabel(itype,fontsize=26)
                plt.xlabel('Value',fontsize=26)
                plt.savefig(os.getcwd() + exp_path + \
                        '{}_percent_diff_{}_heatmap.png'\
                        .format(itype.lower(),dtype.lower()),
                        bbox_inches='tight')
                plt.clf()
                ax.clear()
                fig.clear()
                plt.close()
        prnt_msg('\n{} simulations analyzed'.format(num_sims))

    def extract_parname(rxn_parname):
        """pull parameter name from Reaction_#_..."""
        i = re.search(r'Reaction\_\d+\_',rxn_parname).span(0)[1]
        return rxn_parname[i:]

    # Errors
    warnings.filterwarnings(action='error',
                            message='.*invalid value encountered.*',)
    warnings.filterwarnings(action='error',message='.*overflow encountered.*',)
    
    # Lists for dataframes for branches and lines 
    # of percent differences for analysis.
    branch_dfs,line_dfs = [],[]
    # Multiplier for denominator.
    flux_prop_multiplier = 1
    # Mutational effect as percentage.
    mut_change = 0.01
    # Equilibrium check data record threshold 
    # (how often in fixations to check slope and CV).
    eq_check = 100
    # Equilibrium check window threshold
    # (how often in eq_check-fixation windows to check for equilibrium)
    window_check = 5

    # Create tree object and read in user commands.
    exptree = Tree()
    exptree.parse_user_commands()

    # Start experiment.
    exp_start_time = datetime.now()
    # Experiment datetime.
    exp_datetime = str(exp_start_time)
    exp_datetime_str = exp_datetime.replace(' ','_').replace(':','.')\
        .replace('-','')[2:-10]

    # Pathway to experiment folder.
    exp_path = '/PEMPS_{}_{}/'.format(exp_note,exp_datetime_str)
    if exp_path not in str(subprocess.run(['ls','-d',exp_path],
                                        capture_output=True).stdout):
        subprocess.run(['mkdir',os.getcwd()+exp_path])

    # Log file.
    write_log_file = True
    if write_log_file:
        logfile = os.getcwd() + exp_path + 'experiment__log.txt'.format(exp_note)
        with open(logfile,'a') as lf:
            lf.write(exp_note + '_logfile\n\n')
            lf.write('commands:\n')
            lf.write(ctext)

    # Experiment info.
    prnt_msg('\n\nBeginning experiment '+exp_note+' at '+exp_datetime[:-7])
    prnt_msg('metabolic model from ' + copasi_filename)
    prnt_msg('phylogenetic tree from ' + newick_filename)

    # Find branches in phylogeny.
    exptree.find_branches(exp_path)

    # Create and equilibrate starting population.
    exptree.simulate(exptree.branch_dict[0])
    exptree.record_equilibration_data(exptree.branch_dict[0],exp_path,gen=True)

    # Relieve working memory of large data dictionary by reducing
    # it to information from final fixation.
    if len(exptree.branch_dict[0].data['fit']) > 0:
            # Find fixation index (last mutation that fixed)
            # by reversing 'fix' column and indexing the first True.
            # Add 1 because negative indexing starts at 1.
            fixind = exptree.branch_dict[0].data['fix'][::-1].index(True) + 1
    else:
        # If there are no parental fixations, 
        # just index the last row.
        fixind = 1
    # Update data dict, reseting the generation count to 0.    
    exptree.branch_dict[0].data = {
        info:([exptree.branch_dict[0].data[info][-fixind]] if \
            info != 'gens' else [0]) for info in data_labels}
    # Jettison other info as well.
    exptree.branch_dict[0].fixed_eq_check_vals = None
    exptree.branch_dict[0].slopes_cvs = None
    # Make simulation tree template.
    sim_tree_tmp = dc(exptree)
    # Calculate number of simulated generations along each branch.
    sim_tree_tmp.find_gens_per_branch()
    
    # Begin simulating over tree.
    prnt_msg('\nRunning {} simulations'.format(num_sims))
    for nsim in range(1,num_sims+1):
        sim_start_time = datetime.now()
        sim_datetime = str(sim_start_time)
        sim_datetime_str = sim_datetime.replace(' ','_').replace(':','.')\
            .replace('-','')[2:-10]
        prnt_msg('\nStarting simulation {} at {}'.format(nsim,sim_datetime[:-7]))
        sim_folder = 'simulation_{}_{}/'.format(nsim,sim_datetime_str)
        sim_path = exp_path + sim_folder
        if sim_folder not in str(subprocess.run(['ls','-d',sim_folder],
                                                capture_output=True).stdout):
            subprocess.run(['mkdir',os.getcwd()+sim_path])
        simtree = dc(sim_tree_tmp)
        simtree.branch_dict[0].inherit(exptree.branch_dict[0])
        simtree.branch(simtree.branch_dict[0])
        sim_stop_time = datetime.now()
        sim_runtime_string = make_runtime_string(sim_start_time,sim_stop_time)
        prnt_msg('Finished simulation {} at {}, runtime: {}'\
                .format(nsim,str(datetime.now())[:-7],sim_runtime_string))
        simtree.record_node_data(simtree.branch_list[1:],sim_path,
                                'Branch',nsim,True)
        simtree.trace_lines()
        simtree.record_node_data(simtree.line_list,sim_path,'Line',nsim,True)
    if num_sims > 1:
        analyze_sims(exp_path)
    exp_stop_time = datetime.now()
    exp_runtime_string = make_runtime_string(exp_start_time,exp_stop_time)
    prnt_msg('Finished experiment at {}, runtime: {}'\
            .format(str(exp_stop_time)[:-7],exp_runtime_string))

if __name__ == '__main__':
    experiment()
