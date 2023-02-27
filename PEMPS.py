"""
Phylogenetic Evolution of Metabolic Pathway Simulator

inputs:
    copasi file
    newick string
    user commands: specify above two inputs and several other parameters

output:
    data file of tabular and graphical info from simulation
"""

import os
import re
import math
# import sympy
import dendropy
import warnings
import subprocess
import numpy as np
import pandas as pd
import seaborn as sns
from datetime import datetime
from copy import deepcopy as dc
import matplotlib.pyplot as plt

class Node():
    def __init__(self):
        self.no = None # number, based on length of name
        self.name = None # newick substring
        self.length = 0 # node length
        self.cbl = None # cumulative branch length (same as length for lines)
        self.cfactor = None # concordance factor
        self.type = 'node'
        self.ancs = [] # all ancestors
        self.parent = None # immediate ancestor
        self.scions = [] # all descendants
        self.children = [] # immediate descendants
        self.sister = None
        self.popsize = 0
        self.gpn = 0 # generations for this node
        self.ei = None # external index for ordering lines based on tree
        
        self.dd = None
        self.fc = 0 # fixation count
        self.impfc = 0 # imported fc
        self.mc = 0 # mutation count
        self.rc = 0 # reversal count
        
        self.mutants = []
        self.cpstext = None # model
        self.iss = None # initial conditions
        self.impd = None
        self.kpd = None
        self.dpd = None
        self.concs = None
        self.rfxs = None
        self.fpd = None
        self.fit = None

        self.reset = False
        self.ertyps = []
        self.slopes = None
        self.cvs = None

    def parse_ssout(self):
        """parse steady state output file for fluxes and initial conditions for species"""
        with open(ssoutfile) as file:
            sstext = file.read()
        if re.search(r'No steady state with given resolution was found!',sstext) != None:
            self.reset = True
            # no steady state was found
            self.ertyps.append('NoSS')
        if re.search(r'Summary:\nThis state is asymptotically stable',sstext) == None:
            self.reset = True
            # not asymptotically stable
            self.ertyps.append('NAS')
        # fluxes for model species
        m = re.search(r'Species.+?(?=\n\n)',sstext,re.DOTALL)
        m.group(0)
        df = pd.DataFrame([x.split('\t') for x in m.group(0).split('\n')])
        # particle number rates and particle numbers
        self.concs = [float(df[df.iloc[:,0]==rfpn][1]) for rfpn in rfpns]
        self.pns = [float(df[df.iloc[:,0]==rfpn][3]) for rfpn in rfpns]
        # reaction particle fluxes (#/s)
        m = re.search(r'Reaction.+?(?=\n\n)',sstext,re.DOTALL)
        m.group(0)
        df = pd.DataFrame([x.split('\t') for x in m.group(0).split('\n')])
        # ,1 for flux extensive flux ,3 for particle number rate
        self.rfxs = [float(x) for x in df.iloc[1:,1]]
        self.fpd = {frxn:float(df[df[0]==frxn][1]) for frxn in FRXNs}

    def update_cps(self):
        """alter model parameters after mutation for new copasi steady state calculation"""
        # replace string of initial values
        self.cpstext = re.sub(r'(?<=\"initialState\">\n\s{6}).+?(?=\s\n)',' '.join([str(x) for x in self.iss]),self.cpstext,re.DOTALL)
        ## update kinetic parameters
        for m1 in re.finditer(r'<Reaction key=.+?</Reaction>',self.cpstext,re.DOTALL):
            ort = m1.group(0)
            nrt = dc(ort)
            rkey = re.search(r'(?<=key=\").+?(?=\")',ort).group(0)
            # relevant kinetic parameters for this reaction
            rkps = [kp for kp in self.kpd.keys() if re.match(r'{}_'.format(rkey),kp) != None] # and kp in mutants
            for rkp in rkps:
                kp = rkp[len(rkey)+1:]
                # old and new value strings
                ovs = re.search(r'name=\"{}\" value=\".+?\"'.format(kp),ort).group(0)
                nvs = re.sub(r'(?<=value=\").+?(?=\")',str(self.kpd[rkp]),ovs)
                # update reaction text
                nrt = nrt.replace(ovs,nvs)
            # update model text
            self.cpstext = self.cpstext.replace(ort,nrt)
        ## update dps
        # segments where values go
        dpsegs = [m.group(0) for m in re.finditer(r'Metabolites.{,600}\d+?/&lt;',self.cpstext,re.DOTALL)]
        # make changes in text
        for dp,t in zip(self.dpd,dpsegs):
            if dp in self.mutants:
                v = self.dpd[dp]
                nt = re.sub(r'\d+?(\.\d*?)?(?=/&lt;)',str(v),t)
                self.cpstext = self.cpstext.replace(t,nt)
        # rewrite cps file
        with open(cpsfn,'w',encoding='utf8') as file:
            file.write(self.cpstext)

    def cfit(self):
        """calculate (weighted) fitness"""
        pffxs = [fx/fad[fn] for fx,fn in zip(self.fpd.values(),FRXNs)]
        # fts = [(1/(1+np.e**(-1*(pfx-0.5)**0.07))-0.5)/0.5 for pfx in pffxs]
        fts = [(1/(1+np.e**(10*(0.5-pfx)))-0.006692850924284857)/0.9866142981514304 for pfx in pffxs]
        afts = [ft**wt for ft,wt in zip(fts,fwts)]
        self.fit = np.prod(afts)
        # trigger reset if value isn't real
        if isinstance(self.fit,complex):
            self.reset = True
            self.ertyps.append('Cfit')
        return fts

    def mutate(self):
        """introduce mutations"""
        # list of mutated parameters
        self.mutants = []
        def mutate_paramdict(pard,kinetic=False):
            """mutate a parameter dict"""
            # select only parameters to be mutated
            parl = [par for par in pard if par not in exl]
            for par in parl:
                if np.random.poisson(0.003) == 1:
                    self.mutants.append(par)
                    # mutations tend to make parameters a little worse, different for binding constants
                    loc = mperc if par in bcl else -mperc
                    # mutate
                    me = np.random.normal(loc=loc,scale=mperc)
                    # for difficult parameters,
                    if par in self.dpd:
                        # change both effective value for calculation
                        self.dpd[par] *= 1 + me
                        # and this value for data recording 
                        self.impd[par] *= 1 + me
                    else:
                        pard[par] *= 1 + me
                        if not kinetic:
                            # assign new value to string and dict
                            self.iss[names.index(par)] = self.impd[par]
        mutate_paramdict(self.impd)
        mutate_paramdict(self.kpd,kinetic=True)

    def calc_pfix(self,ofit):
        """calculate probability of fixation"""
        # selection coefficient
        sc = self.fit/ofit - 1
        try:
            # overflow errors occur beyond these ranges
            if abs(sc) <= 1e-18:
                pf = 0.5
            elif sc <= -0.25:
                pf = 0
            else:
                pf = (1-np.e**(-2*ploidy*self.popsize*sc*0.5))/(1-np.e**(-2*ploidy*self.popsize*sc))
        except:
            pf = 0
            self.reset = True
            self.ertyps.append(sc)
        # trigger reset if sc is complex
        if isinstance(sc,complex):
            self.reset = True
            self.ertyps.append('Csc')
        # return pfix and fixation boolean
        return sc,pf,np.random.uniform(0,1)<pf

    def inherit(self,pnode):
        """transfer relevant attributes to branching population"""
        self.cpstext = dc(pnode.cpstext)
        self.iss = dc(pnode.iss)
        self.impd = dc(pnode.impd)
        self.kpd = dc(pnode.kpd)
        self.dpd = dc(pnode.dpd)
        self.concs = dc(pnode.concs)
        self.rfxs = dc(pnode.rfxs)
        self.fpd = dc(pnode.fpd)
        self.pns = dc(pnode.pns)
        self.opns = dc(pnode.opns)
        self.fit = pnode.fit
        # last row of parent dd that fixed becomes first row of child dd
        if pnode.fc > 0:
            fixind = pnode.dd['fix'][::-1].index(True)
        else:
            fixind = 1
        self.dd = {info:([pnode.dd[info][-fixind]] if info != 'gens' else [0]) for info in infol}

    def filterdd(self):
        """remove unfixed muations for graphing"""
        ndd = pd.DataFrame(self.dd)
        ndd = ndd[ndd['fix']==True]
        self.dd = ndd.to_dict(orient='list')

class Tree():
    def __init__(self):
        self.newick_string = ''
        self.bd = {} # branch dict
        self.bl = [] # branch list
        self.ld = {} # line dict
        self.ll = [] # line list
        self.glr = None # generation to length ratio

    global prnt_msg,make_runtime_string,cv,transats,analyze_sims

    def prnt_msg(S):
        """print to screen and logfile"""
        print(S)
        if LF:
            with open (logfile,'a') as lf:
                lf.write(S+'\n')

    def make_runtime_string(start_time,stop_time):
        """runtime component for foldernames"""
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

    def cv(x):
        """find coefficient of variation"""
        mu = np.mean(x)
        # avoid divide by 0
        if mu == 0:
            return 0
        else:
            return np.std(x) / mu

    def transats(old_obj,otype,nodd=False):
        """transfer attributes to new object"""
        if otype == 'tree':
            new_obj = Tree()
            # avoid copying entire equilibration dd to new tree (too much memory)
            if nodd:
                # new branch list
                newbl = []
                for node in old_obj.bl:
                    new_node = Node()
                    natlist = list(node.__dict__.keys())
                    if node.type == 'root':
                        natlist.remove('dd')
                        for at in natlist:
                            new_node.__dict__[at] = node.__dict__[at]
                        new_node.dd = {info:([node.dd[info][-1]] if info != 'gens' else [0]) for info in infol}
                        newbl.append(new_node)
                    else:
                        for at in natlist:
                            new_node.__dict__[at] = node.__dict__[at]
                        newbl.append(new_node)
                new_obj.bl = newbl
                new_obj.bd = {n.no:n for n in newbl}
                # other tree attributes
                new_obj.newick_string,new_obj.glr = old_obj.newick_string,old_obj.glr
                return new_obj
        elif otype == 'node':
            new_obj = Node()
        atlist = list(old_obj.__dict__.keys())
        for at in atlist:
            new_obj.__dict__[at] = old_obj.__dict__[at]
        return new_obj
    
    def parse_user_commands(self):
        """read in user commands from text file"""
        global ctext,nwkfn,popsizes,ploidy,cpsfn,nolist,FRXNs,FRXNls,fwts,nsims,egen,sgen,impeq,eq,expnote,ssoutfile

        # read user commands file
        with open('commands.txt') as cfile:
            ctext = cfile.read()

        # newick string file
        nwkfn = re.search(r'(?<=rooted newick string file name: ).+?(?=\n)',ctext).group(0)
        # population sizes
        popsizes = [int(x) for x in re.search(r'(?<=population size\(s\): ).+?(?=\n)',ctext).group(0).split(',')]
        # ploidy
        ploidy = int(re.search(r'(?<=ploidy: )\d+?(?=\n)',ctext).group(0))
        # copasi file name
        cpsfn = re.search(r'(?<=copasi file name: ).+?(?=\n)',ctext).group(0)
        # parameters to exclude from mutation
        nolist = re.search(r'(?<=no-mutation parameters: ).+?(?=\n)',ctext).group(0).split(',')
        # fitness-determining flux reactions
        FRXNs = re.search(r'(?<=fitness-determining fluxes: ).+?(?=\n)',ctext).group(0).split(',')
        # list for data recording
        FRXNls = ['fit '+F for F in FRXNs]
        # weights for fitness calculation
        fwts = [float(x) for x in re.search(r'(?<=weights for fitness calculation: ).+?(?=\n)',ctext).group(0).split(',')]
        # number of simulations
        nsims = int(re.search(r'(?<=number of simulations: )\d+?(?=\n)',ctext).group(0))
        # generations to equilibrate and branch
        egen = int(re.search(r'(?<=generations to equilibrate: )\d+?(?=\n)',ctext).group(0))
        sgen = int(re.search(r'(?<=generations to branch: )\d+?(?=\n)',ctext).group(0))
        # import old equilibration
        impeq = re.search(r'(?<=experiment foldername containing old equilibration to import \(can enter None\): ).+?(?=\n)',ctext).group(0)
        # equilibrate?
        eq = re.search(r'(?<=equilibrate \(Y/n\): )\w',ctext).group(0)
        # experiment note
        expnote = re.search(r'(?<=experiment note: ).+?(?=\n)',ctext).group(0).replace(' ','_')
        # outfile name
        ssoutfile = re.search(r'(?<=outfile name: ).+?(?=\n)',ctext).group(0)
    
    def initial_cps_parse(self,node):
        """parse cps file and steady state output file"""
        global cpsfn,keqd,bcl,exl,iss,names,sstext,rfpns,cfpns,fpns,Nfxs,rns,FRXNs,FRXNls,pinfol,mpars,infol,zerolist,knames
        
        ## extract parameters from model
        with open(cpsfn,encoding='utf8') as cpsfile:
            node.cpstext = cpstext = cpsfile.read()
        # blank equilibrium constant dict, kinetic parameter dict, binding constant list, zerolist, name list
        keqd,kpd,bcl,zerolist,names,exl,knames = {},{},[],[],[],[],[]
        
        # object references
        objrefs = [m.group(0) for m in re.finditer(r'(?<=objectReference=\").+?(?=\")',cpstext)]
        # initial value string
        isstr = re.search(r'(?<=\"initialState\">\n\s{6}).+?(?=\s\n)',cpstext,re.DOTALL).group(0)
        # initial value list
        iss = [float(x) for x in isstr.split(' ')]
        # parameter names, found with object references
        for objref in objrefs:
            try:
                names.append(re.search(r'(?<=key=\"{}\"\sname=\").+?(?=\")'.format(objref),cpstext).group(0))
            except:
                ...
        # assume first is model starttime and exclude
        impd = {n:v for n,v in zip(names[1:],iss[1:])}
        # loop through each reaction section in cps file
        for m1 in re.finditer(r'<Reaction key=.+?</Reaction>',cpstext,re.DOTALL):
            rt = m1.group(0)
            rkey = re.search(r'(?<=key=\").+?(?=\")',rt).group(0)
            # find kinetic parameters and name with reaction key
            for m2 in re.finditer(r'(?<=name=\").+?(?=\"/>)',rt):
                kname,kval = m2.group(0).split('" value="')
                knames.append(kname)
                kpdkey = rkey+'_'+kname
                kpd[kpdkey] = float(kval)
                # exclude nolist params
                if kname in nolist:
                    exl.append(kpdkey)
        # winnow
        def winnow(pard):
            global keqd,bcl,exl
            for par in pard:
                # find equilibrium constants to avoid mutating them
                if re.search(r'keq',par,re.IGNORECASE) != None:
                    keqd[par] = pard[par]
                # detect binding constants for bcl
                if re.search(r'(^k|.*\_k)(?!(cat|eq|\d)).*',par,re.IGNORECASE) != None:
                    bcl.append(par)
                # exclude certain parameters
                for nol in nolist:
                    if re.search(r'([^\w]|^){}([^\w]|$)'.format(nol),par,re.IGNORECASE) != None:
                        exl.append(par)
                # values of 0 do not mutate
                if pard[par] == 0:
                    zerolist.append(par)
        winnow(impd)
        winnow(kpd)

        ## find difficult parameters
        # where difficult parameters are
        dpsegs = [m.group(0) for m in re.finditer(r'Metabolites.{,600}\d+?/&lt;',cpstext,re.DOTALL)]
        # names
        dpnames = [re.search(r'(?<=\[).+?(?=\])',seg,re.DOTALL).group(0) for seg in dpsegs]
        # get slashes out of names
        for i,dpname in enumerate(dpnames):
            try:
                ind = dpname.index('\\')
                dpnames[i] = dpname[:ind] + dpname[ind+1:]
            except:
                ...
        # values
        dpvals = [float(re.search(r'\d+?(\.\d*?)?(?=/&lt;)',seg).group(0)) for seg in dpsegs]
        # difficult parameter dict
        dpd = {k:float(v) for k,v in zip(dpnames,dpvals)}

        ## check for redundancies
        rps = [m.group(0) for m in re.finditer(r'<ModelParameter[^>]*?Parameter=.*?InitialValue>',cpstext,re.DOTALL)]
        rpd = {re.search(r'(?<=Parameter=).+?(?=\")',rp).group(0):re.search(r'(?<=Values\[).+?(?=\])',rp).group(0) for rp in rps}
        okpd = dc(kpd)
        for rpar in rpd:
            for k in okpd:
                if re.search(r'Reaction\_\d+?\_{}'.format(rpar),k) != None:
                    try:
                        del kpd[k]
                    except:
                        ...

        ## read output file
        with open(ssoutfile) as file:
            sstext = file.read()
        # convert to dataframe
        m = re.search(r'Species.+?(?=\n\n)',sstext,re.DOTALL)
        m.group(0)
        df = pd.DataFrame([x.split('\t') for x in m.group(0).split('\n')])
        # raw flux parameter names
        # rfpns = list(df[df.iloc[:,5]!='nan'].iloc[1:,0])
        rfpns = list(df.iloc[1:,0])
        # clean flux parameter names (for indexing in names list)
        cfpns = [re.sub(r'\{.*?\}','',x) for x in rfpns]
        # flux parameter concentrations
        fpns = ['conc_'+fpn for fpn in rfpns]
        # initial fluxes (concentrations)
        concs = [float(df[df.iloc[:,0]==rfpn][1]) for rfpn in rfpns]
        # particle numbers - become initial value for next flux calculation
        pns = [float(df[df.iloc[:,0]==rfpn][3]) for rfpn in rfpns]
        # number of fluxes
        Nfxs = len(rfpns)
        # check for real steady state calculation
        if re.search(r'Summary:\nThis state is asymptotically stable.',sstext) == None:
            prnt_msg('failed initial steady state calculation')
            exit()
        
        # extract reaction fluxes 
        m = re.search(r'Reaction.+?(?=\n\n)',sstext,re.DOTALL)
        m.group(0)
        df = pd.DataFrame([x.split('\t') for x in m.group(0).split('\n')])
        # reaction fluxes (column 3 is #/s, column 1 is extensive flux (mmol/s))
        rfxs = [float(x) for x in df.iloc[1:,1]]
        # reaction names
        rns = list(df.iloc[1:,0])
        # flux parameter dict
        fpd = {frxn:float(df[df[0]==frxn][1]) for frxn in FRXNs}
        
        # add keq values and species and parameters with value of 0 to exclusion list
        exl.extend(list(keqd.keys())+cfpns+zerolist)

        ## first row of dd - with parameter info list
        pinfol = ['fix','gens','fit','sc','pfix','mutants','errors']
        mpars = list(impd.keys())+list(kpd.keys())
        infol = pinfol+FRXNls+fpns+rns+mpars
        dd = {}
        for k,v in zip(infol,[True]+[None]*(len(pinfol+FRXNls)-1)+concs+rfxs+list(impd.values())+list(kpd.values())):
            dd[k] = [v]
        
        ## assign attributes to node
        node.dd = dc(dd)
        node.fpd = dc(fpd)
        node.concs = dc(concs)
        node.rfxs = dc(rfxs)
        node.impd = dc(impd)
        node.kpd = dc(kpd)
        node.iss = dc(iss)
        node.pns = dc(pns)
        node.dpd = dc(dpd)

    def find_branches(self,exp_path):
        """parse newick string to construct tree object"""
        
        # make tree object with dendropy
        dtree = dendropy.Tree.get(path=nwkfn,schema='newick')
        # write ascii tree to text file
        with open(os.getcwd() + exp_path+'ascii_tree.txt','w') as f:
            f.write(dtree.as_ascii_plot())
        
        ## parse newick string
        with open(nwkfn) as file:
            ns = file.read()
        # look for rooting at a node
        try:
            rootnn = re.search(r'[A-Za-z_\.]+(?=(\;|\,))',ns).group(0)
        except:
            # if no node found to be root, whole string will represent root
            rootnn = ''
        # substring list
        ssl = ns.split(',')
        # find external nodes
        for ei,ss in enumerate(ssl):
            try:
                new_node = Node()
                # name = re.search(r'(\w|\s|\.)+?\:?\d+\.?\d+',ss).group(0)
                name = re.search(r'(\w|\s|\.)+?\:\d+(\.\d+)?(e\-)?(\d+)?',ss).group(0)
                new_node.name = name.replace('(','').replace(')','').replace(',','').replace(';','')
                new_node.type = 'external' if rootnn != name else 'root'
                # extract branch lengths if present
                try:
                    # branch length is number following colon
                    new_node.length = float(name[name.index(':')+1:])
                except:
                    pass
                new_node.ei = ei
                self.bl.append(new_node)
            except:
                pass
        # find internal nodes, which have matching parentheses
        oc_starts = [m.span()[0] for m in re.finditer(r'\(',ns)]
        # fop = index of first open parenthesis
        for fop in oc_starts:
            new_node = Node()
            new_node.type = 'internal'
            opc = 1 # open parenthesis count
            cpc = 0 # closed parenthesis count
            lcp = fop + 1 # counter for index of last closed parenthesis
            for c in ns[fop+1:]:
                if c == '(':
                    opc += 1
                elif c == ')':
                    cpc += 1
                lcp += 1
                if opc == cpc:
                    break # when matching number of () found
            # slice from a ( to a )
            substring = ns[fop:lcp]
            new_node.name = substring
            # find substring index to look for more info
            ssi = ns.index(substring)
            stop = ssi + len(substring)
            # extract branch length - the number after the first colon
            try:
                bl = re.search(r':.+?(\,|\))',ns[stop:]).group(0)[1:-1]
                new_node.length = float(bl)
            except:
                pass
            # extract concordance factor - number after newick substring
            try:
                cf = re.search(r'.+?:',ns[stop:]).group(0)[1:-1]
                new_node.cfactor = float(cf)
            except:
                pass
            self.bl.append(new_node)
        # remove duplicates
        for branch1 in self.bl:
            for branch2 in self.bl:
                if branch1.name.strip == branch2.name:
                    self.bl.remove(branch2)
        
        # sort nodes by string length
        self.bl.sort(key=lambda x: len(x.name),reverse=True)
        # move root to position 0
        rootnode = next((n for n in self.bl if n.type == 'root'),None)
        if rootnode == None:
            self.bl[0].type = 'root'
        else:
            self.bl.remove(rootnode)
            self.bl.insert(0,rootnode)
        # assign node number
        for n,node in enumerate(self.bl): node.no = n
        # create dictionary
        self.bd = {node.no:node for node in self.bl}
        # identify ancestors and descendants
        for n1 in self.bl:
            for n2 in self.bl:
                if n1.name in n2.name and n1 != n2:
                    n1.ancs.append(n2.no)
                    n2.scions.append(n1.no)
            # otherwise, root node is longest string
            if n1.ancs == [] and rootnn != '':
                n1.ancs = [rootnn]
        # identify parents
        for node in self.bl:
            node.ancs.sort(reverse=True) # shortest to longest, moving down the tree
            node.scions.sort() # longest to shortest, moving up the tree
            if node.ancs != []:
                node.parent = node.ancs[0]
        # identify sisters and children
        for n1 in self.bl:
            for n2 in self.bl:
                if n1.parent == n2.parent and n1 != n2:
                    n1.sister = n2.no
                    n2.sister = n1.no
                elif n1.parent == n2.no:
                    n2.children.append(n1.no)
        
        # set population sizes
        if len(popsizes) == 1:
            for branch in self.bl:
                branch.popsize = popsizes[0]
        elif len(popsizes) == len(self.bl):
            for branch,p in zip(self.bl,popsizes):
                branch.popsize = p
        else:
            prnt_msg('error parsing population size input, defaulting to population size of 1000 for all branches')
            for branch in self.bl:
                branch.popsize = 1000
        # make dataframe
        atl = ['name','length','cfactor','type','ancs','parent','scions','children','sister','popsize']
        dfdict = {at:[node.__dict__[at] for node in self.bl] for at in atl}
        binfodf = pd.DataFrame(dfdict)
        binfodf.index.name = 'no.'
        binfodf.to_excel(os.getcwd() + exp_path + 'prelim_branch_info.xlsx')

    def populate(self):
        """set up initial population"""
        global fad,cpsfn
        # import equilibration
        if impeq != 'None':
            prnt_msg('importing root population from {}'.format(impeq))
            impcpspath = os.getcwd() + '/' + impeq + '/equilibration_data/equilibration_final_cps.cps'
            with open(impcpspath,encoding='utf8') as nfile:
                self.bd[0].cpstext = nfile.read()
            # write as current file - will overwrite user cps input
            cpsfn = 'import_{}.cps'.format(impeq)
            with open(cpsfn,'w',encoding='utf8') as ncps:
                ncps.write(self.bd[0].cpstext)
        # run file and make ssout
        subprocess.run(['./cop/bin/CopasiSE', cpsfn, '-s', cpsfn, '--nologo'])
        # first parse - after user sets up file
        self.initial_cps_parse(self.bd[0])
        # get fad, first row of dd and other values from import
        if impeq != 'None':
            self.import_equilibrated_root()
        else:
            # proportionalization dictionary based on starting flux value
            fad = {fn:sfx*fadm for fn,sfx in zip(FRXNs,self.bd[0].fpd.values())}
            # calculate fitnesses
            fts = self.bd[0].cfit()
            if self.bd[0].reset:
                print('whoops')
            # update dd
            self.bd[0].dd['fit'] = [self.bd[0].fit]
            for FRXNl,ft in zip(FRXNls,fts):
                self.bd[0].dd[FRXNl] = [ft]

    def simulate(self,node):
        """simulate evolution in population"""
        global Tgens,tgens
        if node.type == 'root':
            self.populate()
            tgens1 = start = node.gpn
            node.gpn = Tgens1 = node.gpn + egen
            # set fixation count to imported value
            node.fc = node.impfc
            # make slopes and cvs dict
            node.slopes = {F:[] for F in FRXNls}
            node.cvs = {F:[] for F in FRXNls}
        else:
            node.update_cps()
            Tgens1 = Tgens
            tgens1 = tgens
            start = 0
        ffixtext = node.cpstext
        for gi in range(start,node.gpn):
            tgens1 += 1
            node.reset = False
            node.ertyps = []
            # save old values
            ofit = node.fit
            ofpd = dc(node.fpd)
            oconcs = dc(node.concs)
            orfxs = dc(node.rfxs)
            oimpd = dc(node.impd)
            okpd = dc(node.kpd)
            oiss = dc(node.iss)
            odpd = dc(node.dpd)
            omodel = node.cpstext
            # list of mutated parameters
            node.mutate()
            # if a mutation occurs, calculate flux
            if len(node.mutants) > 0:
                node.mc += 1
                # write mutations into cps file
                node.update_cps()
                # run steady state calculation and update model
                _ = subprocess.run(['./cop/bin/CopasiSE', cpsfn, '-s', cpsfn, '--nologo'],capture_output=True)
                # read model updates back into python
                with open(cpsfn,encoding='utf8') as cpsfile:
                    node.cpstext = cpsfile.read()
                # parse the output file
                node.parse_ssout()
                # fitness
                fts = node.cfit()
                # determine probability of fixation
                sc,pf,fix = node.calc_pfix(ofit)
                # count reset and get error data
                if node.reset:
                    node.rc += 1
                    fix = False
                    ers = node.ertyps
                else:
                    ers = None
                # update dd
                for k,v in zip(infol,[fix,gi,node.fit,sc,pf,node.mutants,ers]+fts\
                    +node.concs+node.rfxs+list(node.impd.values())+list(node.kpd.values())):
                    node.dd[k].append(v)
                if not fix:
                    # reset all values and model
                    node.fit = ofit
                    node.fpd = dc(ofpd)
                    node.concs = dc(oconcs)
                    node.rfxs = dc(orfxs)
                    node.impd = dc(oimpd)
                    node.kpd = dc(okpd)
                    node.iss = dc(oiss)
                    node.dpd = dc(odpd)
                    node.cpstext = omodel
                    with open(cpsfn,'w',encoding='utf8') as file:
                        file.write(node.cpstext)
                    # rerun
                    _ = subprocess.run(['./cop/bin/CopasiSE', cpsfn, '-s', cpsfn, '--nologo'],capture_output=True)
                else:
                    node.fc += 1
                    node.opns = dc(node.pns)
                    ffixtext = node.cpstext
                    # check for fitness equilibrium
                    if node.type == 'root' and len(node.dd['fit']) % eqch == 0:
                        X = np.arange(eqch)
                        # select past eqch number of fitness values for each flux
                        Ys = [node.dd[FRXNl][-eqch:] for FRXNl in FRXNls]
                        # find slopes and coefficients of variation
                        slopes = [np.polyfit(X,Y,1)[0] for Y in Ys]
                        for F,s in zip(FRXNls,slopes):
                            node.slopes[F].append(s)
                        cvs = [cv(Y) for Y in Ys]
                        for F,c in zip(FRXNls,cvs):
                            node.cvs[F].append(c)
                print('generation {}/{}, fixations: {}, resets: {}, fit: {}, progress: {}%{}'.format(gi,node.gpn,node.fc,node.rc,node.fit,round(tgens1/Tgens1*100,3),' '*20),end='\r')
        # keep track of total generations over branching simulation
        tgens = tgens1
        # reset cpstext to last fixation
        node.cpstext = ffixtext

    def find_glr(self):
        """determine ratio to convert branch length to generations per branch"""
        cbls = [] # cumulative branch lengths
        for node in self.bl[1:]:
            cbl = sum([self.bd[n].length for n in [node.no] + node.ancs if self.bd[n].length != None])
            node.cbl = cbl
            cbls.append(cbl)
        self.glr = sgen / max(cbls)
        for node in self.bl[1:]:
            node.gpn = round(self.glr*node.length)

    def branch(self,node):
        """simulate recursively through tree"""
        global Tgens,tgens
        if node.type != 'root':
            if node.gpn != 0:
                prnt_msg('simulating {} node {}'.format(node.type,node.no))
                self.simulate(node)
                prnt_msg('finished branch {} after {} generations with {} mutations, {} fixations, and {} resets; final fit: {}{}'.format(node.no,node.gpn,node.mc,node.fc,node.rc,node.fit,' '*10))
            else:
                prnt_msg('branch {} has length 0'.format(node.no))
        else:
            # total generations to simulate across branches
            Tgens = sum([n.gpn for n in self.bl[1:]])
            tgens = 0
            prnt_msg('branching root population fit: {}'.format(node.fit))
            prnt_msg('total generations to simulate: {}'.format(Tgens))
        for childno in node.children:
            # pass on fit, flux and mpd
            self.bd[childno].inherit(node)
            # recurse
            self.branch(self.bd[childno])

    def trace_lines(self):
        # copy external nodes as lines
        self.ll = [dc(node) for node in self.bl if node.type == 'external']
        self.ll.sort(key=lambda x: x.ei)
        self.ld = {node.no:node for node in self.ll}
        # list of lists of ancestors excluding root
        ancnos = [node.ancs[:-1] for node in self.ll]
        # concatenate branch data into lines
        for node,ancnol in zip(self.ll,ancnos):
            # if line does not start at the root
            if ancnol != []:
                # remove first datum to avoid redundancy with last datum of parent
                for info in infol:
                    node.dd[info] = node.dd[info][1:]
            # add branch no. to dicts, assign cbl to length
            node.dd['branch no.'] = [node.no] * len(node.dd['fit'])
            node.length = node.cbl
            # concatenate all but first datum to avoid redundancy, except for most distant anc
            for ancno in ancnol:
                if ancno != min(ancnol):
                    node.dd['branch no.'] = [ancno]*(len(self.bd[ancno].dd['fit'])-1) + node.dd['branch no.']
                else:
                    node.dd['branch no.'] = [ancno]*len(self.bd[ancno].dd['fit']) + node.dd['branch no.']
                for info in infol:
                    if ancno != min(ancnol):
                        node.dd[info] = self.bd[ancno].dd[info][1:] + node.dd[info]
                    else:
                        node.dd[info] = self.bd[ancno].dd[info] + node.dd[info]
                node.fc += self.bd[ancno].fc
                node.mc += self.bd[ancno].mc
                node.rc += self.bd[ancno].rc
                node.gpn += self.bd[ancno].gpn

    def write_final_info(self,nl,path,itype,no=''):
        """record final infor for a node"""
        with open(path + itype.lower() + '{}_final_info.txt'.format(no),'w') as file:
            for node in nl:
                if itype == 'Equilibration':
                    file.write(itype + ' info\n\n')
                    file.write('newick string: ' + node.name + '\n\n')
                    file.write('flux scaler dict: ' + str(fad) + '\n\n')
                    if node.fc > 0:
                        # add 1 because negative indexing starts at 1
                        fixind = node.dd['fix'][::-1].index(True) + 1
                    else:
                        fixind = 1
                    # final row dict - save as dataframe for reading import
                    frd = {info:[node.dd[info][-fixind]] for info in infol}
                    frdf = pd.DataFrame(frd)
                    frdf.to_excel(path + itype.lower() + '_final_row.xlsx',index=False)
                    # also write string to text file
                    file.write('last row of dd: ' + str([node.dd[info][-fixind] for info in infol]) + '\n\n')
                    with open(path + itype.lower() + '_final_cps.cps','w') as ncpsfile:
                        ncpsfile.write(node.cpstext)
                else:
                    file.write('info for ' + itype.lower() + ' ' + str(node.no) + '\n\n')
                    file.write('newick substring: ' + node.name + '\n\n')
                    cpsfilepath = path + 'cps_files/'
                    # make folder for cps files
                    if cpsfilepath not in str(subprocess.run(['ls','-d',cpsfilepath],capture_output=True).stdout):
                        subprocess.run(['mkdir',cpsfilepath])
                    with open(cpsfilepath + itype.lower() + '{}_final_cps.cps'.format(node.no),'w') as ncpsfile:
                        ncpsfile.write(node.cpstext)
                file.write('no. generations: ' + str(node.gpn) + '\n')
                file.write('no. fixations: ' + str(node.fc) + '\n')
                file.write('no. mutations: ' + str(node.mc) + '\n')
                file.write('no. reversals: ' + str(node.rc) + '\n\n')
                for fp in FRXNs:
                    file.write('final {}: '.format(fp) + str(node.fpd[fp]) + '\n')
                file.write('final fitness: ' + str(node.fit) + '\n\n')         

    def plot_fitness(self,nl,path,itype):
        """separate and joined fitness graphs"""
        titleparts = ['Population Fitness'] + FRXNls
        labelparts = ['fitness'] * (len(FRXNs)+1)
        fileparts = ['fit'] + FRXNls # + [x.replace(' ','_') for x in FRXNs]
        for F,f,k in zip(titleparts,labelparts,fileparts):
            plt.rcParams["figure.figsize"] = (14,14)
            for node in nl:
                plt.plot(node.dd[k])
            if len(nl) > 1:
                plt.legend([n.no for n in nl],bbox_to_anchor=(1,1),ncol=len(nl)//50+1)
            plt.title('{} {}'.format(itype,F),fontsize=24)
            plt.xlabel('fixations',fontsize=20)
            plt.ylabel(f,fontsize=20)
            plt.savefig(path+'{}_{}.png'.format(itype.lower(),k),bbox_inches='tight')
            plt.rcParams["figure.figsize"] = plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()
        if itype == 'Equilibration':
            # all fitnesses
            plt.rcParams["figure.figsize"] = (14,14)
            for f in ['fit'] + FRXNls:
                if f == 'fit':
                    plt.plot(node.dd[f],linewidth=2.75)
                else:
                    plt.plot(node.dd[f])
            plt.legend(['population fitness'] + [F + ' fitness' for F in FRXNs])
            plt.title('Fitnesses',fontsize=24)
            plt.xlabel('fixations',fontsize=20)
            plt.ylabel('fitness',fontsize=20)
            plt.savefig(path+'all_fits.png',bbox_inches='tight')
            plt.rcParams["figure.figsize"] = plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()
            # slopes
            plt.rcParams["figure.figsize"] = (14,14)
            for f in FRXNls:
                plt.plot(node.slopes[f])
            plt.legend(FRXNls)
            plt.title('Slopes of fitnesses over {}-fixation windows'.format(eqch),fontsize=24)
            plt.xlabel('fixations',fontsize=20)
            plt.ylabel('best-fit line slope',fontsize=20)
            plt.savefig(path+'slopes.png',bbox_inches='tight')
            plt.rcParams["figure.figsize"] = plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()
            plt.rcParams["figure.figsize"] = (14,14)
            # cvs
            for f in FRXNls:
                plt.plot(node.cvs[f])
            plt.legend(FRXNls)
            plt.title('CVs of fitnesses over {}-fixation windows'.format(eqch),fontsize=24)
            plt.xlabel('fixations',fontsize=20)
            plt.ylabel('coefficient of variation',fontsize=20)
            plt.savefig(path+'cvs.png',bbox_inches='tight')
            plt.rcParams["figure.figsize"] = plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()

    def plot_fluxes(self,nl,path,itype):
        fxpath = path + 'fluxes/'
        if fxpath not in str(subprocess.run(['ls','-d',fxpath],capture_output=True).stdout):
            subprocess.run(['mkdir',fxpath])
        # species and reactions
        for fxp in fpns+rns:
            plt.rcParams["figure.figsize"] = (14,14)
            for node in nl:
                plt.plot(node.dd[fxp])
            plt.xlabel('fixations',fontsize=10)
            plt.ylabel(fxp,fontsize=10)
            if itype == 'Equilibration':
                plt.title('{} over Equilibration'.format(fxp),fontsize=14)
                plt.savefig(fxpath+'{}_equilibration.png'.format(fxp),bbox_inches='tight')
            else:
                plt.title('{} {}'.format(itype,fxp),fontsize=14)
                plt.legend([node.no for node in nl],bbox_to_anchor=(1,1),ncol=len(nl)//50+1)
                plt.savefig(fxpath+'{}_{}.png'.format(itype.lower(),fxp),bbox_inches='tight')
            plt.rcParams["figure.figsize"] = plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()

    def plot_per_node(self,nl,path,itype):
        Fs = ['Fitness','Generations','Fixations','Length','Cumulative Length']+['Flux ({})'.format(fp) for fp in FRXNs]
        fs = ['fitness','generations','fixations','length','cumulative length']+['flux (mmol/l/s)']*len(FRXNs)
        gns = ['fit','gens','fixs','lens','clens']+['{}_{}'.format(i+1,fp) for i,fp in enumerate(FRXNls)]
        fits = [node.fit for node in nl]
        gens = [node.gpn for node in nl]
        fixes = [node.fc for node in nl]
        lens = [node.length for node in nl]
        clens = [node.cbl for node in nl]
        dls = [fits,gens,fixes,lens,clens]
        FDFluxes = [[node.dd[fp][-1] for node in nl] for fp in FRXNls]
        dls.extend(FDFluxes)
        for F,f,d,gn in zip(Fs,fs,dls,gns):
            plt.rcParams["figure.figsize"] = (12,12)
            plt.bar([n.no for n in nl],d)
            plt.title('{} {}'.format(itype,F),fontsize=15)
            plt.xticks([n.no for n in nl])
            plt.xlabel(itype.lower(),fontsize=12)
            plt.ylabel(f,fontsize=12)
            plt.savefig(path+'{}_{}_bar.png'.format(itype.lower(),gn),bbox_inches='tight')
            plt.rcParams["figure.figsize"] = plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()

    def graphpars(self,nl,path,itype):
        pfpath = path + '/parameters/'
        if pfpath not in str(subprocess.run(['ls','-d',pfpath],capture_output=True).stdout):
            subprocess.run(['mkdir',pfpath])
        xlab = 'Fixations'
        itypel = itype.lower()
        # avoid plotting flat lines
        gpars = [par for par in mpars if par not in nolist + zerolist + exl]
        # 1 graph per parameter, len(nl) nodes per graph
        for par in gpars:
            plt.rcParams["figure.figsize"] = (14,14)
            for node in nl:
                plt.plot(node.dd[par])
            plt.ylabel(par,fontsize=18)
            plt.xlabel(xlab,fontsize=18)
            if itype == 'Equilibration':
                plt.title('{} during Equilibration'.format(par),fontsize=24)
                plt.savefig(pfpath + 'root_{}.png'.format(par),bbox_inches='tight')
            else:
                plt.title('{} {}'.format(itypel,par))
                plt.legend([node.no for node in nl],bbox_to_anchor=(1,1),ncol=len(nl)//50+1)
                plt.savefig(pfpath + '{}_{}.png'.format(itypel,par),bbox_inches='tight')
            plt.rcParams["figure.figsize"] = plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()

    def record_datatables(self,nl,path,itype,nsim=0,gen=True):
        """write generational and final datatables"""
        global mostvals
        # folder of excel files of generational data for each node
        if len(nl) > 1 and gen:
            gdpath = path + 'generational_' + itype.lower() + '_data/'
            if gdpath not in str(subprocess.run(['ls','-d',gdpath],capture_output=True).stdout):
                subprocess.run(['mkdir',gdpath])
        else:
            # no need for separate folder for just one file
            gdpath = path
        cols = ['fixed','generation','fitness','selection coef','PoF','mutants','errors'] + FRXNls + fpns + rns + mpars
        mostvals = ['fit'] + FRXNls + fpns + rns + mpars
        if itype == 'Line':
            cols.append('branch no.')
        if itype != 'Equilibration':
            morecols = ['name','length','generations','fixations','mutations']
            # pre-final dataframe dict
            preFdfd = {k:[] for k in morecols + mostvals}
            # pre-initial dataframe dict
            preIdfd = {k:[] for k in mostvals}
        for node in nl:
            gdf = pd.DataFrame(node.dd)
            gdf.columns = cols
            if gen:
                def splitfile(df,fnc,nn):
                    maxrows = 500000
                    exfiles = math.ceil(df.shape[0]/maxrows)
                    nn = '' if nn == 0 else str(nn)
                    if exfiles == 1:
                        df.to_excel(gdpath+'{}_{}.xlsx'.format(itype.lower()+nn,fnc))
                    else:
                        for exf in range(exfiles):
                            df.iloc[exf*maxrows:(exf+1)*maxrows].to_excel(gdpath+'{}_{}_part{}.xlsx'.format(itype.lower()+nn,fnc,exf+1))
                if itype == 'Equilibration':
                    # if equilibration was imported, fixation index doesn't start at 0
                    gdf.index = range(node.impfc,node.impfc+len(gdf))
                    gdf.index.name = 'mutations'
                    splitfile(gdf,'data',node.no)
                    return # that's it for equilibration
                else:
                    gdf.index.name = 'mutations'
                    splitfile(gdf,'data',node.no)
            # accrue initial and final values for next steps
            for info in mostvals:
                preIdfd[info].append(node.dd[info][0])
                preFdfd[info].append(node.dd[info][-1])
            # collect for final node datatable
            for col2,ndatum in zip(morecols,[node.name,node.length,node.gpn,node.fc,len(node.dd['fit']),node.mc-node.fc]):
                preFdfd[col2].append(ndatum)
        # excel file for final data
        fdf = pd.DataFrame(preFdfd)
        fdf.columns = morecols + ['fitness'] + mostvals[1:]
        fdf.index = [n.no for n in nl]
        fdf.index.name = itype.lower()
        fdf.to_excel(path+'final_{}_data.xlsx'.format(itype.lower()))
        # percent differences from start values and heatmap
        Fpddf = fdf[['fitness']+mostvals[1:]]
        Spddf = pd.DataFrame(preIdfd)
        Spddf.columns,Spddf.index = Fpddf.columns,Fpddf.index
        Dpddf = Fpddf.subtract(Spddf)
        RCdf = Dpddf.divide(Spddf)
        PDdf = RCdf.multiply(100)
        if itype == 'Branch':
            bPDdfl.append(PDdf)
        elif itype == 'Line':
            lPDdfl.append(PDdf)
        PDdf.to_excel(path+itype.lower()+'_percent_diffs.xlsx')
        # normalize percent differences for graphing
        remcols = []
        DP,CP = 0,0
        for c in range(PDdf.shape[1]):
            mx = max(PDdf.iloc[:,c])
            mn = min(PDdf.iloc[:,c])
            if mx == mn or mx == np.inf or mn == -1*np.inf: # np.inf in [abs(x) for x in PDdf.iloc[:,c]]:
                remcols.append(c)
            try:
                if mx > 0 and mn < 0:
                    DP += 1
                if mx != mn:
                    CP += 1
            except:
                ...
            else:
                for r in range(PDdf.shape[0]):
                    try:
                        if PDdf.iloc[r,c] >= 0:
                            PDdf.iloc[r,c] = np.sign(PDdf.iloc[r,c]) * (PDdf.iloc[r,c]-0)/(mx-0)
                        else:
                            PDdf.iloc[r,c] = np.sign(PDdf.iloc[r,c]) * (PDdf.iloc[r,c]-mn)/(0-mn)
                    except:
                        PDdf.iloc[r,c] = np.nan
            # don't graph nothing columns
            if set(np.isnan(PDdf.iloc[:,c])) == {True}:
                remcols.append(c)
        # write normalized pdiffs
        PDdf.to_excel(path+itype.lower()+'_normalized_percent_diffs.xlsx')
        # remove columns with no differences or infinite values
        PDdf = PDdf.drop(PDdf.iloc[:,remcols],axis=1)
        # write heatmap values
        PDdf.to_excel(path+itype.lower()+'_heatmap_values.xlsx')
        # indicate level of nonsystematic movement
        try:
            prnt_msg('There are {} diverging parameters among {} total changing parameters with {} binding constants'.format(DP,CP,len(bcl)))
        except:
            ...
        # matching labels
        mostvals2 = [l for l in mostvals if mostvals.index(l) not in remcols]
        pdarray = np.asarray(PDdf)
        hmd = pdarray.astype('float')
        # two color schemes
        for colsch in ['gnuplot2','PiYG']:
            sns.set(font_scale=1)
            fig, ax = plt.subplots(figsize=(36,22))
            sns.heatmap(hmd,yticklabels=[n.no for n in nl],xticklabels=mostvals2,linewidth=0.5,cmap=colsch,ax=ax)
            plt.title('Normalized percent change in simulation {} values from start to end'.format(nsim),fontsize=36)
            plt.ylabel(itype,fontsize=26)
            plt.xlabel('Value',fontsize=26)
            plt.savefig(path + 'percent_diff_heatmap_{}.png'.format(colsch),bbox_inches='tight')
            plt.clf()
            ax.clear()
            fig.clear()
            plt.close()

    def record_equilibration_data(self,root_node,exp_path,gen=False):
        prnt_msg('\nWriting equilibration data')
        # full equilibration subdirectory
        itype = 'Equilibration'
        eqfold = exp_path + 'equilibration_data/'
        fesd = os.getcwd() + eqfold
        if eqfold not in str(subprocess.run(['ls','-d',eqfold],capture_output=True).stdout):
            subprocess.run(['mkdir',fesd])
        self.write_final_info([root_node],fesd,itype)
        # if equilibration was imported or not started, there's no generational data
        self.record_datatables([root_node],fesd,itype,gen=gen)
        # probabilities of fixaton histogram
        plt.rcParams["figure.figsize"] = (12,12)
        plt.hist(root_node.dd['pfix'][1:],bins=[x/10 for x in range(10)])
        plt.title('all probabilities of fixation')
        plt.xlabel('value')
        plt.ylabel('frequency')
        plt.savefig(fesd+'equilibration_pfixes.png',bbox_inches='tight')
        plt.rcParams["figure.figsize"] = plt.rcParamsDefault["figure.figsize"]
        plt.clf()
        plt.close()
        # remove unfixed mutations
        root_node.filterdd()
        self.plot_fitness([root_node],fesd,itype)
        self.plot_fluxes([root_node],fesd,itype)
        self.graphpars([root_node],fesd,itype)
        
        prnt_msg('All equilibration data recorded')

    def record_node_data(self,nl,sim_path,itype,nsim,gen):
        prnt_msg('Writing {} data'.format(itype.lower()))
        # full simulation subdirectory
        nfold = sim_path + itype.lower() + '_data/'
        fssd = os.getcwd() + nfold
        if nfold not in str(subprocess.run(['ls','-d',nfold],capture_output=True).stdout):
            subprocess.run(['mkdir',fssd])
        attlist = ['name','length','gpn','fc','mc','rc']
        # mutations, fixations, reversals as datatable
        node_data_dict = {att:[node.__dict__[att] for node in self.bl] for att in attlist}
        node_df = pd.DataFrame(node_data_dict)
        node_df.index.name = 'no.'
        node_df.to_excel(fssd + itype.lower() + '_info.xlsx')
        # probabilities of fixaton histogram
        if itype == 'Branch':
            allpfxs = []
            for node in nl + [self.bd[0]]:
                allpfxs.extend(node.dd['pfix'])
            while None in allpfxs:
                allpfxs.remove(None)
            plt.rcParams["figure.figsize"] = (12,12)
            plt.hist(allpfxs,bins=[x/10 for x in range(10)])
            plt.title('all probabilities of fixation')
            plt.xlabel('value')
            plt.ylabel('frequency')
            plt.savefig(os.getcwd()+sim_path+'allpfixes.png',bbox_inches='tight')
            plt.rcParams["figure.figsize"] = plt.rcParamsDefault["figure.figsize"]
            plt.clf()
            plt.close()
        # only nodes with content in dd
        subnl = [node for node in nl if node.gpn != 0]
        self.plot_per_node(subnl,fssd,itype)
        self.write_final_info(subnl,fssd,itype)
        # more selective - must have some fixations
        subnl = [node for node in nl if node.fc != 0]
        self.record_datatables(subnl,fssd,itype,nsim,gen=gen)
        # remove unfixed mutations for lines
        if itype == 'Line':
            for node in subnl:
                node.filterdd()
        self.plot_fitness(subnl,fssd,itype)
        self.plot_fluxes(subnl,fssd,itype)
        self.graphpars(subnl,fssd,itype)
        
        prnt_msg('{} data recorded'.format(itype))

    def analyze_sims(exp_path):
        """
        excel files and heatmaps for average % differences and variance across sims
        maybe exclude fitness and rpps as well as fsd.values
        """        
        for pdfl,itype in zip([bPDdfl,lPDdfl],['Branch','Line']):
            # create matrix of lists to stack dataframes
            nrows,ncols = pdfl[0].iloc.shape
            ylabs = list(pdfl[0].iloc.index)
            apds = [[[] for j in range(ncols)] for i in range(nrows)]
            for df in pdfl:
                dfal = df.iloc.values.tolist()
                for i in range(nrows):
                    for j in range(ncols):
                        apds[i][j].append(dfal[i][j])
            avgpdiffs = pd.DataFrame([[sum(apds[i][j])/len(apds[i][j]) for j in range(ncols)] for i in range(nrows)])
            varpdiffs = pd.DataFrame([[np.var(apds[i][j]) for j in range(ncols)] for i in range(nrows)])
            avgpdiffs.columns,avgpdiffs.index,avgpdiffs.index.name = mostvals,ylabs,itype
            varpdiffs.columns,varpdiffs.index,varpdiffs.index.name = mostvals,ylabs,itype
            avgpdiffs.to_excel(os.getcwd() + exp_path + '{}_avgpdiffs_{}_sims.xlsx'.format(itype.lower(),nsims))
            varpdiffs.to_excel(os.getcwd() + exp_path + '{}_varpdiffs_{}_sims.xlsx'.format(itype.lower(),nsims))
            for df,dtype in zip([avgpdiffs,varpdiffs],['Averages','Variances']):
                hmdarray = np.asarray(df)
                hmd = hmdarray.astype('float')
                sns.set(font_scale=1)
                fig, ax = plt.subplots(figsize=(36,22))
                sns.heatmap(hmd,yticklabels=ylabs,xticklabels=mostvals,linewidth=0.5,cmap='gnuplot2',ax=ax)
                plt.title('{} Percent Change {} across {} Simulations from Start to End'.format(itype,dtype,nsims),fontsize=36)
                plt.ylabel(itype,fontsize=26)
                plt.xlabel('Value',fontsize=26)
                plt.savefig(os.getcwd() + exp_path + '{}_percent_diff_{}_heatmap.png'.format(itype.lower(),dtype.lower()),bbox_inches='tight')
                plt.clf()
                ax.clear()
                fig.clear()
                plt.close()
        prnt_msg('\n{} simulations analyzed'.format(nsims))

    def import_equilibrated_root(self):
        """reload equilibration node from old simulation"""
        global fad
        # read in final info txt file
        eqtxtfile = os.getcwd() + '/' + impeq + '/equilibration_data/equilibration_final_info.txt'
        with open(eqtxtfile) as file:
            alltext = file.read()
        # generations, fixations, mutations, resets, and fitness
        self.bd[0].gpn = int(re.search(r'(?<=no. generations: )\d+(?=\n)',alltext).group(0))
        self.bd[0].impfc = self.bd[0].fc = int(re.search(r'(?<=no. fixations: )\d+(?=\n)',alltext).group(0))
        self.bd[0].mc = int(re.search(r'(?<=no. mutations: )\d+(?=\n)',alltext).group(0))
        self.bd[0].rc = int(re.search(r'(?<=no. reversals: )\d+(?=\n)',alltext).group(0))
        self.bd[0].fit = float(re.search(r'(?<=final fitness: )\d+\.\d+(?=\n)',alltext).group(0))
        # proportion dict
        fad = {k:v for k,v in zip(FRXNs,[float(m.group(0)) for m in re.finditer(r'\d+\.\d+',re.search(r'flux scaler dict:.+\n',alltext).group(0))])}
        # fill first row dd from dataframe
        eqddfr = os.getcwd() + '/' + impeq + '/equilibration_data/equilibration_final_row.xlsx'
        self.bd[0].dd = pd.read_excel(eqddfr).to_dict(orient='list')

# errors
warnings.filterwarnings(action='error',message='.*invalid value encountered.*',)
warnings.filterwarnings(action='error',message='.*overflow encountered.*',)

# lists for dataframes for branches and lines of % diffs for analysis
bPDdfl,lPDdfl = [],[]
# print info
pinfo = False
# multiplier for denominator
fadm = 2
# mutation percent
mperc = 0.01
# equilibrium check
eqch = 500

# create tree object and read in user commands
exptree = Tree()
exptree.parse_user_commands()

# run experiment - equilibrate, then replicate tree and branch with nsims repetitions
exp_start_time = datetime.now()
edtn = str(exp_start_time) # experiment datetime
edtns = edtn.replace(' ','_').replace(':','.').replace('-','')[2:-10]

# pathway to experiment folder
exp_path = '/exp_{}_{}/'.format(expnote,edtns)
if exp_path not in str(subprocess.run(['ls','-d',exp_path],capture_output=True).stdout):
    subprocess.run(['mkdir',os.getcwd()+exp_path])
# write a copy of the current program as text file
with open(os.getcwd() + exp_path + '/program_{}.py'.format(edtns),'w') as outfile:
    with open(os.path.basename(__file__),'r') as tempfile:
        outfile.write(tempfile.read())

# log file
LF = True
if LF:
    # logfile = os.getcwd() + exp_path + 'experiment_{}_log.txt'.format(edtns)
    logfile = os.getcwd() + exp_path + 'experiment__log.txt'.format(expnote)
    with open(logfile,'a') as lf:
        lf.write(expnote + 'logfile\n\n')
        lf.write('commands:\n')
        lf.write(ctext)

## start experiment
prnt_msg('Beginning experiment at ' + edtn[:-7])
prnt_msg('metabolic model from ' + cpsfn)
prnt_msg('phylogenetic tree from ' + nwkfn)
prnt_msg('Conducting {} simulations with total g={}'.format(nsims,sgen))

# find branches and generation to branch length ratio
exptree.find_branches(exp_path)
exptree.find_glr()

# starting population
exptree.simulate(exptree.bd[0])
exptree.record_equilibration_data(exptree.bd[0],exp_path,gen=True)

# begin simulating over tree
for nsim in range(1,nsims+1):
    sim_start_time = datetime.now()
    sdtn = str(sim_start_time) # simulation datetime
    sdtns = sdtn.replace(' ','_').replace(':','.').replace('-','')[2:-10]
    prnt_msg('\nStarting simulation {} at {}'.format(nsim,sdtn[:-7]))
    sfold = 'simulation_{}_{}/'.format(nsim,sdtns)
    sim_path = exp_path + sfold
    if sfold not in str(subprocess.run(['ls','-d',sfold],capture_output=True).stdout):
        subprocess.run(['mkdir',os.getcwd()+sim_path])
    simtree = transats(exptree,'tree',nodd=True)
    simtree.branch(simtree.bd[0])
    sim_stop_time = datetime.now()
    sim_runtime_string = make_runtime_string(sim_start_time,sim_stop_time)
    prnt_msg('Finished simulation {} at {}, runtime: {}'.format(nsim,str(datetime.now())[:-7],sim_runtime_string))
    simtree.record_node_data(simtree.bl[1:],sim_path,'Branch',nsim,True)
    simtree.trace_lines()
    simtree.record_node_data(simtree.ll,sim_path,'Line',nsim,True)
if nsims > 1:
    analyze_sims(exp_path)
exp_stop_time = datetime.now()
exp_runtime_string = make_runtime_string(exp_start_time,exp_stop_time)
prnt_msg('Finished experiment at {}, runtime: {}'.format(str(exp_stop_time)[:-7],exp_runtime_string))
