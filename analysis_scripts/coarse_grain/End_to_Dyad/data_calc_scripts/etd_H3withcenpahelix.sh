#!/bin/bash

source /Users/jlee295/.bashrc

cd /Users/jlee295/cenp/CAFEMOL/H3withcenpahelix/


cpptraj <<_EOF
parm run1/usable_H3withcenpahelix.psf
#trajin run1/H3withcenpahelix_1.dcd
trajin run1/H3withcenpahelix_1centered.dcd
#trajin run2/H3withcenpahelix_2.dcd
trajin run2/H3withcenpahelix_2centered.dcd
#trajin run3/H3withcenpahelix_3.dcd
trajin run3/H3withcenpahelix_3centered.dcd
#trajin run4/H3withcenpahelix_4.dcd
trajin run4/H3withcenpahelix_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out H3withcenpahelix-dist-etd_entry.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpahelix.psf
#trajin run1/H3withcenpahelix_1.dcd
trajin run1/H3withcenpahelix_1centered.dcd
#trajin run2/H3withcenpahelix_2.dcd
trajin run2/H3withcenpahelix_2centered.dcd
#trajin run3/H3withcenpahelix_3.dcd
trajin run3/H3withcenpahelix_3centered.dcd
#trajin run4/H3withcenpahelix_4.dcd
trajin run4/H3withcenpahelix_4centered.dcd

distance end-to-end :143-152 :73-74 out H3withcenpahelix-dist-etd_exit.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpahelix.psf
#trajin run1/H3withcenpahelix_1.dcd
trajin run1/H3withcenpahelix_1centered.dcd

distance end-to-end :1-5,290-294 :73-74 out H3withcenpahelix-dist-etd_entry1.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpahelix.psf
#trajin run1/H3withcenpahelix_1.dcd
trajin run1/H3withcenpahelix_1centered.dcd

distance end-to-end :143-152 :73-74 out H3withcenpahelix-dist-etd_exit1.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpahelix.psf
#trajin run2/H3withcenpahelix_2.dcd
trajin run2/H3withcenpahelix_2centered.dcd

distance end-to-end :1-5,290-294 :73-74 out H3withcenpahelix-dist-etd_entry2.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpahelix.psf
#trajin run2/H3withcenpahelix_2.dcd
trajin run2/H3withcenpahelix_2centered.dcd

distance end-to-end :143-152 :73-74 out H3withcenpahelix-dist-etd_exit2.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpahelix.psf
#trajin run3/H3withcenpahelix_3.dcd
trajin run3/H3withcenpahelix_3centered.dcd

distance end-to-end :1-5,290-294 :73-74 out H3withcenpahelix-dist-etd_entry3.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpahelix.psf
#trajin run3/H3withcenpahelix_3.dcd
trajin run3/H3withcenpahelix_3centered.dcd

distance end-to-end :143-152 :73-74 out H3withcenpahelix-dist-etd_exit3.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpahelix.psf
#trajin run4/H3withcenpahelix_4.dcd
trajin run4/H3withcenpahelix_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out H3withcenpahelix-dist-etd_entry4.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpahelix.psf
#trajin run4/H3withcenpahelix_4.dcd
trajin run4/H3withcenpahelix_4centered.dcd

distance end-to-end :143-152 :73-74 out H3withcenpahelix-dist-etd_exit4.dat

_EOF

mv /Users/jlee295/cenp/CAFEMOL/H3withcenpahelix/*.dat /Users/jlee295/cenp/CAFEMOL/analyses/EtD/
