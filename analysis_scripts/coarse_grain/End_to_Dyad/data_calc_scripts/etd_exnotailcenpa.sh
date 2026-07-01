#!/bin/bash

source /Users/jlee295/.bashrc

cd /Users/jlee295/cenp/CAFEMOL/exnotailcenpa/


cpptraj <<_EOF
parm ~/view/CGview/exnotailcenpa/run1/minimized_exnotailcenpa_cg.psf
#trajin run1/exnotailcenpa_1.dcd
trajin run1/exnotailcenpa_1centered.dcd
#trajin run2/exnotailcenpa_2.dcd
trajin run2/exnotailcenpa_2centered.dcd
#trajin run3/exnotailcenpa_3.dcd
trajin run3/exnotailcenpa_3centered.dcd
#trajin run4/exnotailcenpa_4.dcd
trajin run4/exnotailcenpa_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out exnotailcenpa-dist-etd_entry.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/exnotailcenpa/run1/minimized_exnotailcenpa_cg.psf
#trajin run1/exnotailcenpa_1.dcd
trajin run1/exnotailcenpa_1centered.dcd
#trajin run2/exnotailcenpa_2.dcd
trajin run2/exnotailcenpa_2centered.dcd
#trajin run3/exnotailcenpa_3.dcd
trajin run3/exnotailcenpa_3centered.dcd
#trajin run4/exnotailcenpa_4.dcd
trajin run4/exnotailcenpa_4centered.dcd

distance end-to-end :143-152 :73-74 out exnotailcenpa-dist-etd_exit.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/exnotailcenpa/run1/minimized_exnotailcenpa_cg.psf
#trajin run1/exnotailcenpa_1.dcd
trajin run1/exnotailcenpa_1centered.dcd

distance end-to-end :1-5,290-294 :73-74 out exnotailcenpa-dist-etd_entry1.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/exnotailcenpa/run1/minimized_exnotailcenpa_cg.psf
#trajin run1/exnotailcenpa_1.dcd
trajin run1/exnotailcenpa_1centered.dcd

distance end-to-end :143-152 :73-74 out exnotailcenpa-dist-etd_exit1.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/exnotailcenpa/run1/minimized_exnotailcenpa_cg.psf
#trajin run2/exnotailcenpa_2.dcd
trajin run2/exnotailcenpa_2centered.dcd

distance end-to-end :1-5,290-294 :73-74 out exnotailcenpa-dist-etd_entry2.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/exnotailcenpa/run1/minimized_exnotailcenpa_cg.psf
#trajin run2/exnotailcenpa_2.dcd
trajin run2/exnotailcenpa_2centered.dcd

distance end-to-end :143-152 :73-74 out exnotailcenpa-dist-etd_exit2.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/exnotailcenpa/run1/minimized_exnotailcenpa_cg.psf
#trajin run3/exnotailcenpa_3.dcd
trajin run3/exnotailcenpa_3centered.dcd

distance end-to-end :1-5,290-294 :73-74 out exnotailcenpa-dist-etd_entry3.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/exnotailcenpa/run1/minimized_exnotailcenpa_cg.psf
#trajin run3/exnotailcenpa_3.dcd
trajin run3/exnotailcenpa_3centered.dcd

distance end-to-end :143-152 :73-74 out exnotailcenpa-dist-etd_exit3.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/exnotailcenpa/run1/minimized_exnotailcenpa_cg.psf
#trajin run4/exnotailcenpa_4.dcd
trajin run4/exnotailcenpa_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out exnotailcenpa-dist-etd_entry4.dat

_EOF



cpptraj <<_EOF
parm ~/view/CGview/exnotailcenpa/run1/minimized_exnotailcenpa_cg.psf
#trajin run4/exnotailcenpa_4.dcd
trajin run4/exnotailcenpa_4centered.dcd

distance end-to-end :143-152 :73-74 out exnotailcenpa-dist-etd_exit4.dat

_EOF

mv /Users/jlee295/cenp/CAFEMOL/exnotailcenpa/*.dat /Users/jlee295/cenp/CAFEMOL/analyses/EtD/
