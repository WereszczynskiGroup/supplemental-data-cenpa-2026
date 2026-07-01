#!/bin/bash

source /Users/jlee295/.bashrc

cd /Users/jlee295/cenp/CAFEMOL/H3withcenpalatch/


cpptraj <<_EOF
parm run1/usable_H3withcenpalatch.psf
#trajin run1/one.dcd
trajin run1/H3withcenpalatch_1centered.dcd
#trajin run2/one.dcd
trajin run2/H3withcenpalatch_2centered.dcd
#trajin run3/one.dcd
trajin run3/H3withcenpalatch_3centered.dcd
#trajin run4/one.dcd
trajin run4/H3withcenpalatch_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out H3withcenpalatch-dist-etd_entry.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpalatch.psf
#trajin run1/one.dcd
trajin run1/H3withcenpalatch_1centered.dcd
#trajin run2/one.dcd
trajin run2/H3withcenpalatch_2centered.dcd
#trajin run3/one.dcd
trajin run3/H3withcenpalatch_3centered.dcd
#trajin run4/one.dcd
trajin run4/H3withcenpalatch_4centered.dcd

distance end-to-end :143-152 :73-74 out H3withcenpalatch-dist-etd_exit.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpalatch.psf
#trajin run1/one.dcd
trajin run1/H3withcenpalatch_1centered.dcd

distance end-to-end :1-5,290-294 :73-74 out H3withcenpalatch-dist-etd_entry1.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpalatch.psf
#trajin run1/one.dcd
trajin run1/H3withcenpalatch_1centered.dcd

distance end-to-end :143-152 :73-74 out H3withcenpalatch-dist-etd_exit1.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpalatch.psf
#trajin run2/one.dcd
trajin run2/H3withcenpalatch_2centered.dcd

distance end-to-end :1-5,290-294 :73-74 out H3withcenpalatch-dist-etd_entry2.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpalatch.psf
#trajin run2/one.dcd
trajin run2/H3withcenpalatch_2centered.dcd

distance end-to-end :143-152 :73-74 out H3withcenpalatch-dist-etd_exit2.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpalatch.psf
#trajin run3/one.dcd
trajin run3/H3withcenpalatch_3centered.dcd

distance end-to-end :1-5,290-294 :73-74 out H3withcenpalatch-dist-etd_entry3.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpalatch.psf
#trajin run3/one.dcd
trajin run3/H3withcenpalatch_3centered.dcd

distance end-to-end :143-152 :73-74 out H3withcenpalatch-dist-etd_exit3.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpalatch.psf
#trajin run4/one.dcd
trajin run4/H3withcenpalatch_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out H3withcenpalatch-dist-etd_entry4.dat

_EOF



cpptraj <<_EOF
parm run1/usable_H3withcenpalatch.psf
#trajin run4/one.dcd
trajin run4/H3withcenpalatch_4centered.dcd

distance end-to-end :143-152 :73-74 out H3withcenpalatch-dist-etd_exit4.dat

_EOF

mv /Users/jlee295/cenp/CAFEMOL/H3withcenpalatch/*.dat /Users/jlee295/cenp/CAFEMOL/analyses/EtD/
