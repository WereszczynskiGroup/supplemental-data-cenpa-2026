#!/bin/bash

source /Users/jlee295/.bashrc

cd /Users/jlee295/cenp/CAFEMOL/cenpawithH3latch/


cpptraj <<_EOF
parm run1/usable_cenpawithH3latch.psf
#trajin run1/one.dcd
trajin run1/cenpawithH3latch_1centered.dcd
#trajin run2/one.dcd
trajin run2/cenpawithH3latch_2centered.dcd
#trajin run3/one.dcd
trajin run3/cenpawithH3latch_3centered.dcd
#trajin run4/one.dcd
trajin run4/cenpawithH3latch_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpawithH3latch-dist-etd_entry.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3latch.psf
#trajin run1/one.dcd
trajin run1/cenpawithH3latch_1centered.dcd
#trajin run2/one.dcd
trajin run2/cenpawithH3latch_2centered.dcd
#trajin run3/one.dcd
trajin run3/cenpawithH3latch_3centered.dcd
#trajin run4/one.dcd
trajin run4/cenpawithH3latch_4centered.dcd

distance end-to-end :143-152 :73-74 out cenpawithH3latch-dist-etd_exit.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3latch.psf
#trajin run1/one.dcd
trajin run1/cenpawithH3latch_1centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpawithH3latch-dist-etd_entry1.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3latch.psf
#trajin run1/one.dcd
trajin run1/cenpawithH3latch_1centered.dcd

distance end-to-end :143-152 :73-74 out cenpawithH3latch-dist-etd_exit1.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3latch.psf
#trajin run2/one.dcd
trajin run2/cenpawithH3latch_2centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpawithH3latch-dist-etd_entry2.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3latch.psf
#trajin run2/one.dcd
trajin run2/cenpawithH3latch_2centered.dcd

distance end-to-end :143-152 :73-74 out cenpawithH3latch-dist-etd_exit2.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3latch.psf
#trajin run3/one.dcd
trajin run3/cenpawithH3latch_3centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpawithH3latch-dist-etd_entry3.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3latch.psf
#trajin run3/one.dcd
trajin run3/cenpawithH3latch_3centered.dcd

distance end-to-end :143-152 :73-74 out cenpawithH3latch-dist-etd_exit3.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3latch.psf
#trajin run4/one.dcd
trajin run4/cenpawithH3latch_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out cenpawithH3latch-dist-etd_entry4.dat

_EOF



cpptraj <<_EOF
parm run1/usable_cenpawithH3latch.psf
#trajin run4/one.dcd
trajin run4/cenpawithH3latch_4centered.dcd

distance end-to-end :143-152 :73-74 out cenpawithH3latch-dist-etd_exit4.dat

_EOF

mv /Users/jlee295/cenp/CAFEMOL/cenpawithH3latch/*.dat /Users/jlee295/cenp/CAFEMOL/analyses/EtD/
