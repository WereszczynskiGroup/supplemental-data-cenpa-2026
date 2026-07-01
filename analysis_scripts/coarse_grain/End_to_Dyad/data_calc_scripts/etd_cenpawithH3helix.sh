#!/bin/bash

source /Users/jlee295/.bashrc

cd /Users/jlee295/cenp/CAFEMOL/cenpawithH3helix/


cpptraj <<_EOF
parm run1/usable_cenpawithH3helix.psf
#trajin run1/cenpawithH3helix_1.dcd
trajin run1/cenpawithH3helix_1centered.dcd
#trajin run2/cenpawithH3helix_2.dcd
trajin run2/cenpawithH3helix_2centered.dcd
#trajin run3/cenpawithH3helix_3.dcd
trajin run3/cenpawithH3helix_3centered.dcd
#trajin run4/cenpawithH3helix_4.dcd
trajin run4/cenpawithH3helix_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpawithH3helix-dist-etd_entry.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3helix.psf
#trajin run1/cenpawithH3helix_1.dcd
trajin run1/cenpawithH3helix_1centered.dcd
#trajin run2/cenpawithH3helix_2.dcd
trajin run2/cenpawithH3helix_2centered.dcd
#trajin run3/cenpawithH3helix_3.dcd
trajin run3/cenpawithH3helix_3centered.dcd
#trajin run4/cenpawithH3helix_4.dcd
trajin run4/cenpawithH3helix_4centered.dcd

distance end-to-end :143-152 :73-74 out cenpawithH3helix-dist-etd_exit.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3helix.psf
#trajin run1/cenpawithH3helix_1.dcd
trajin run1/cenpawithH3helix_1centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpawithH3helix-dist-etd_entry1.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3helix.psf
#trajin run1/cenpawithH3helix_1.dcd
trajin run1/cenpawithH3helix_1centered.dcd

distance end-to-end :143-152 :73-74 out cenpawithH3helix-dist-etd_exit1.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3helix.psf
#trajin run2/cenpawithH3helix_2.dcd
trajin run2/cenpawithH3helix_2centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpawithH3helix-dist-etd_entry2.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3helix.psf
#trajin run2/cenpawithH3helix_2.dcd
trajin run2/cenpawithH3helix_2centered.dcd

distance end-to-end :143-152 :73-74 out cenpawithH3helix-dist-etd_exit2.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3helix.psf
#trajin run3/cenpawithH3helix_3.dcd
trajin run3/cenpawithH3helix_3centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpawithH3helix-dist-etd_entry3.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3helix.psf
#trajin run3/cenpawithH3helix_3.dcd
trajin run3/cenpawithH3helix_3centered.dcd

distance end-to-end :143-152 :73-74 out cenpawithH3helix-dist-etd_exit3.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3helix.psf
#trajin run4/cenpawithH3helix_4.dcd
trajin run4/cenpawithH3helix_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpawithH3helix-dist-etd_entry4.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3helix.psf
#trajin run4/cenpawithH3helix_4.dcd
trajin run4/cenpawithH3helix_4centered.dcd

distance end-to-end :143-152 :73-74 out cenpawithH3helix-dist-etd_exit4.dat

_EOF

mv /Users/jlee295/cenp/CAFEMOL/cenpawithH3helix/*.dat /Users/jlee295/cenp/CAFEMOL/analyses/EtD/
