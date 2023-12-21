# PEMPS
Phylogenetic Evolution of Metabolic Pathway Simulator

### Overview
The Python program PEMPS runs on Linux to simulate evolution of metabolic pathways over a phylogeny using a mutation-selection modeling framework with fitness derived from ODE-based steady-state flux calculations performed using COPASI (Complex Pathway Simulator). The user provides an SBML-formatted kinetic model, a Newick-formatted phylogenetic tree, and a variety of specifications including population size(s), ploidy, and the set of reaction fluxes to subject to selective pressure. Both compensatory and adaptive fixations can emerge in such models and indicate single nucleotide polymorphisms and fixed differences with potential effects on phenotype. If used for inference, this model could ultimately enable detection of selection on metabolic pathways as well as inference of ancestral states for metabolic pathway function. Raw data along with graphical depictions are generated in the output file, and have been consistent with a priori expectations of fixation probabilities and systematic change in model parameters.

### User inputs and metabolic model
To run the program in the Linux command line (e.g, python3 PEMPS.py), the user must import an sbml file into Copasi GUI and check the 'update model' and 'executable' options in the steady state task, as well as specify a text output file (deselecting both 'confirm overwrite' and 'append'). This allows subprocess to issue shell commands to COPASI SE for the calculation of steady state. All user commands are provided in a text file (no command line options necessary), in which among other things the user specifies the name of the COPASI (.cps) and output (.txt) files, the reaction flux(es) on which selection operates and the relative weights (summing to 1) of their effects on fitness, the population size(s) and ploidy, the parameters to be excluded from mutation (if any), the number of simulations to run, and the numbers of generations to equilibrate and branch (this will be updated to be automatically calculated from the tree). Additionally, a note can be added to the experimental output file; and if a model from a previous equilibration is desired to be re-run, extended, or simulated through a different tree, the experimental file can be specified. For more detailed instructions, see docstrings. 

### Phylogeny
The phylogeny is extracted from a Newick string and a tree object is constructed over which the simulation can proceed recursively. Rooted trees can be obtained from the NCBI taxonomy, TimeTree, rooted using gene tree/species tree reconciliation using software like SoftParsMap or NOTUNG, or by software like DendroPy using techniques like mid-point rooting when species relationships are unknown. PEMPS requires branch lengths as substitutions per site or in millions of years to determine the number of generations to simulate for each branch. Population sizes for each branch can be entered individually, or the user can decide to assign the same value to all branches. Before the simulation runs through the tree, model parameters of the “root” population will be allowed to equilibrate (i.e., reach values that remain stable over many generations). This ensures that (most) model parameters do not show systematic directional change among branching populations.

### Mutation-selection modeling framework
In each generation, each parameter has a small probability (Poisson random variable, lambda = 0.003) of mutating, and if mutation occurs the steady state flux is recalculated with new parameters. To model the tendency towards slightly deleterious change, mutational effects are drawn from a normal distribution centered at -1% for all parameters except binding constants (1%), because poorer binding corresponds to a larger Km value. The assumption that mutations tend towards slight functional degradation is consistent with results from mutation accumulation experiments and parameterizations of the distribution of fitness effects in protein coding genes. Fixation probabilities are calculated using Kimura's formula using the selection coefficient derived from the ratio of population fitnesses before and after mutation. To speed simulation, neutral mutations (with no fitness effect) have a probability of 0.5 to fix, instead of the original 1/(ploidy * population size). Based on the results of previous simulations of this type (Orlenko, Teufel, et al., 2016), it is expected that unlike other model parameters, most binding constants will continue to show systematic directional movement.

Included are the program, sample input files, and sample output files (branching population fitness and heatmap of normalized percent differences for each model parameter).
