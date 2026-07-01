#!/bin/bash

source /Users/jlee295/.bashrc

cd /Users/jlee295/cenp/CAFEMOL/cenpa/


cpptraj <<_EOF
parm ~/view/CGview/closed_cenpa/run1/minimized_closedcenpa_cg.psf
#trajin run1/cenpa_1.dcd
trajin run1/cenpa_1centered.dcd
#trajin run2/cenpa_2.dcd
trajin run2/cenpa_2centered.dcd
#trajin run3/cenpa_3.dcd
trajin run3/cenpa_3centered.dcd
#trajin run4/cenpa_4.dcd
trajin run4/cenpa_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpa-dist-etd_entry.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_cenpa/run1/minimized_closedcenpa_cg.psf
#trajin run1/cenpa_1.dcd
trajin run1/cenpa_1centered.dcd
#trajin run2/cenpa_2.dcd
trajin run2/cenpa_2centered.dcd
#trajin run3/cenpa_3.dcd
trajin run3/cenpa_3centered.dcd
#trajin run4/cenpa_4.dcd
trajin run4/cenpa_4centered.dcd

distance end-to-end :143-152 :73-74 out cenpa-dist-etd_exit.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_cenpa/run1/minimized_closedcenpa_cg.psf
#trajin run1/cenpa_1.dcd
trajin run1/cenpa_1centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpa-dist-etd_entry1.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_cenpa/run1/minimized_closedcenpa_cg.psf
#trajin run1/cenpa_1.dcd
trajin run1/cenpa_1centered.dcd

distance end-to-end :143-152 :73-74 out cenpa-dist-etd_exit1.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_cenpa/run1/minimized_closedcenpa_cg.psf
#trajin run2/cenpa_2.dcd
trajin run2/cenpa_2centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpa-dist-etd_entry2.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_cenpa/run1/minimized_closedcenpa_cg.psf
#trajin run2/cenpa_2.dcd
trajin run2/cenpa_2centered.dcd

distance end-to-end :143-152 :73-74 out cenpa-dist-etd_exit2.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_cenpa/run1/minimized_closedcenpa_cg.psf
#trajin run3/cenpa_3.dcd
trajin run3/cenpa_3centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpa-dist-etd_entry3.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_cenpa/run1/minimized_closedcenpa_cg.psf
#trajin run3/cenpa_3.dcd
trajin run3/cenpa_3centered.dcd

distance end-to-end :143-152 :73-74 out cenpa-dist-etd_exit3.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_cenpa/run1/minimized_closedcenpa_cg.psf
#trajin run4/cenpa_4.dcd
trajin run4/cenpa_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpa-dist-etd_entry4.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/closed_cenpa/run1/minimized_closedcenpa_cg.psf
#trajin run4/cenpa_4.dcd
trajin run4/cenpa_4centered.dcd

distance end-to-end :143-152 :73-74 out cenpa-dist-etd_exit4.dat

_EOF

mv /Users/jlee295/cenp/CAFEMOL/cenpa/*.dat /Users/jlee295/cenp/CAFEMOL/analyses/EtD/
