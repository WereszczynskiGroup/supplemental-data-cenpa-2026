#!/bin/bash

source /Users/jlee295/.bashrc

cd /Users/jlee295/cenp/CAFEMOL/ltH3core/


cpptraj <<_EOF
parm ~/view/CGview/closed_ltH3core/run1/minimized_closedltH3core_cg.psf
#trajin run1/ltH3core_1.dcd
trajin run1/ltH3core_1centered.dcd
#trajin run2/ltH3core_2.dcd
trajin run2/ltH3core_2centered.dcd
#trajin run3/ltH3core_3.dcd
trajin run3/ltH3core_3centered.dcd
#trajin run4/ltH3core_4.dcd
trajin run4/ltH3core_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out ltH3core-dist-etd_entry.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_ltH3core/run1/minimized_closedltH3core_cg.psf
#trajin run1/ltH3core_1.dcd
trajin run1/ltH3core_1centered.dcd
#trajin run2/ltH3core_2.dcd
trajin run2/ltH3core_2centered.dcd
#trajin run3/ltH3core_3.dcd
trajin run3/ltH3core_3centered.dcd
#trajin run4/ltH3core_4.dcd
trajin run4/ltH3core_4centered.dcd

distance end-to-end :143-152 :73-74 out ltH3core-dist-etd_exit.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_ltH3core/run1/minimized_closedltH3core_cg.psf
#trajin run1/ltH3core_1.dcd
trajin run1/ltH3core_1centered.dcd

distance end-to-end :1-5,290-294 :73-74 out ltH3core-dist-etd_entry1.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_ltH3core/run1/minimized_closedltH3core_cg.psf
#trajin run1/ltH3core_1.dcd
trajin run1/ltH3core_1centered.dcd

distance end-to-end :143-152 :73-74 out ltH3core-dist-etd_exit1.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_ltH3core/run1/minimized_closedltH3core_cg.psf
#trajin run2/ltH3core_2.dcd
trajin run2/ltH3core_2centered.dcd

distance end-to-end :1-5,290-294 :73-74 out ltH3core-dist-etd_entry2.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_ltH3core/run1/minimized_closedltH3core_cg.psf
#trajin run2/ltH3core_2.dcd
trajin run2/ltH3core_2centered.dcd

distance end-to-end :143-152 :73-74 out ltH3core-dist-etd_exit2.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_ltH3core/run1/minimized_closedltH3core_cg.psf
#trajin run3/ltH3core_3.dcd
trajin run3/ltH3core_3centered.dcd

distance end-to-end :1-5,290-294 :73-74 out ltH3core-dist-etd_entry3.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_ltH3core/run1/minimized_closedltH3core_cg.psf
#trajin run3/ltH3core_3.dcd
trajin run3/ltH3core_3centered.dcd

distance end-to-end :143-152 :73-74 out ltH3core-dist-etd_exit3.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_ltH3core/run1/minimized_closedltH3core_cg.psf
#trajin run4/ltH3core_4.dcd
trajin run4/ltH3core_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out ltH3core-dist-etd_entry4.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_ltH3core/run1/minimized_closedltH3core_cg.psf
#trajin run4/ltH3core_4.dcd
trajin run4/ltH3core_4centered.dcd

distance end-to-end :143-152 :73-74 out ltH3core-dist-etd_exit4.dat

_EOF

mv /Users/jlee295/cenp/CAFEMOL/ltH3core/*.dat /Users/jlee295/cenp/CAFEMOL/analyses/EtD/
