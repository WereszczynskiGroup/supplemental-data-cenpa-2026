# Input Files

This directory contains files and scripts used to generate the molecular systems and prepare them for simulation.

- All-atom initial PDB files for histone cores and widom_601/centromeric alpha-satellite DNA sequences
- tleap solvation/ionization script(s) for generating systems (`tleap_solvate.sh`)
- Amber input files for conventional all-atom MD
- Coarse-grained files comprised of all necessary inputs for all systems
- DNA sequences in .txt file format

Additional files such as PRMTOP and RST files may be available upon request. Trajectories available on Zenodo:

The Amber package for all-atom simulation and data analysis was utilized. All-atom systems were constructed in tleap using OPC water model boxes of various sizes to accomodate for DNA motions without periodic image interactions, and neutralized with K+ and Cl- to a final ionic strength condition of 150 mM KCl. Nucleosome systems use BSC1 and ff19SB force fields for DNA and protein, respectively. Hydrogen mass repartitioning was applied to enable the use of a 4 fs time step.

For coarse-grained simulations, a modified version of CafeMol v3.1 was used. All coarse-grained systems were constructed from the first post-equilibration frame of an all-atom replica of H3 or CENP-A depending on the NCP core donor and used centromeric alpha-satellite DNA. Tail/latch/helix modifications were performed on these frames. An ionic strength of 150 mM was used for all systems. 3SPN.2C and AICG2+ force fields were used for DNA and protein, respectively. Nonspecific hydrogen bonded information from the all-atom NCP cores were calculated and accounted for in the coarse-grained simulations. Time steps were 0.3 Cafemol time units, or roughly 30 ps physical time for nucleosome structures.

Systems names as referred to in scripts/files are as follows:

All-atom:
- Canonical H3 with Widom 601 DNA: `H3`
- Canonical H3 with centromeric DNA: `CSH3`
- CENP-A with Widom 601 DNA: `cenpa`
- CENP-A with centromeric DNA: `CScenpa`
- CENP-A<sub>Tail+Latch</sub>H3<sub>Core</sub> with Widom 601 DNA: `ltH3core`
- CENP-A<sub>Tail+Latch</sub>H3<sub>Core</sub> with centromeric DNA: `CSltH3core`
- H3<sub>Tail+Latch</sub>CENP-A<sub>Core</sub> with Widom 601 DNA: `ltcenpacore`
- H3<sub>Tail+Latch</sub>CENP-A<sub>Core</sub> with centromeric DNA: `CSltcenpacore`
- Tailless H3 with Widom 601 DNA: `exnotailH3`
- Tailless H3 with centromeric DNA: `CSexnotailH3`
- Tailless CENP-A with Widom 601 DNA: `exnotailcenpa`
- Tailless CENP-A with centromeric DNA: `CSexnotailcenpa`

Coarse-grained:
- Canonical H3: `H3`
- CENP-A: `cenpa`
- CENP-A<sub>Tail+Latch+αN</sub>H3<sub>Core</sub>: `thruhelixH3`
- H3<sub>Tail+Latch+αN</sub>CENP-A<sub>Core</sub>: `thruhelixcenpa`
- CENP-A<sub>Tail+Latch</sub>H3<sub>Core</sub>: `ltH3core`
- H3<sub>Tail+Latch</sub>CENP-A<sub>Core</sub>: `ltcenpacore`
- CENP-A<sub>Latch+αN</sub>H3<sub>Core</sub>: `H3withcenpa_latch_helix`
- H3<sub>Latch+αN</sub>CENP-A<sub>Core</sub>: `cenpawithH3_latch_helix`
- CENP-A<sub>Tail</sub>H3<sub>Core</sub>: `stH3core`
- H3<sub>Tail</sub>CENP-A<sub>Core</sub>: `stcenpacore`
- H3 with CENP-A<sub>Latch</sub>: `H3withcenpalatch`
- CENP-A with H3<sub>Latch</sub>: `cenpawithH3latch`
- H3 with CENP-A<sub>αN</sub>: `H3withcenpahelix`
- CENP-A with H3<sub>αN</sub>: `cenpawithH3helix`
- Tailless H3: `exnotailH3`
- Tailless CENP-A: `exnotailcenpa`
