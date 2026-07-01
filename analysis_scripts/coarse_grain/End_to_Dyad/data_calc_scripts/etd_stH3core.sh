#!/bin/bash

source /Users/jlee295/.bashrc

cd /Users/jlee295/cenp/CAFEMOL/stH3core/


cpptraj <<_EOF
parm run1/usable_stH3core.psf
#trajin run1/one.dcd
trajin run1/stH3core_1centered.dcd
#trajin run2/one.dcd
trajin run2/stH3core_2centered.dcd
#trajin run3/one.dcd
trajin run3/stH3core_3centered.dcd
#trajin run4/one.dcd
trajin run4/stH3core_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out stH3core-dist-etd_entry.dat

_EOF



cpptraj <<_EOF
parm run1/usable_stH3core.psf
#trajin run1/one.dcd
trajin run1/stH3core_1centered.dcd
#trajin run2/one.dcd
trajin run2/stH3core_2centered.dcd
#trajin run3/one.dcd
trajin run3/stH3core_3centered.dcd
#trajin run4/one.dcd
trajin run4/stH3core_4centered.dcd

distance end-to-end :143-152 :73-74 out stH3core-dist-etd_exit.dat

_EOF



cpptraj <<_EOF
parm run1/usable_stH3core.psf
#trajin run1/one.dcd
trajin run1/stH3core_1centered.dcd

distance end-to-end :1-5,290-294 :73-74 out stH3core-dist-etd_entry1.dat

_EOF



cpptraj <<_EOF
parm run1/usable_stH3core.psf
#trajin run1/one.dcd
trajin run1/stH3core_1centered.dcd

distance end-to-end :143-152 :73-74 out stH3core-dist-etd_exit1.dat

_EOF



cpptraj <<_EOF
parm run1/usable_stH3core.psf
#trajin run2/one.dcd
trajin run2/stH3core_2centered.dcd

distance end-to-end :1-5,290-294 :73-74 out stH3core-dist-etd_entry2.dat

_EOF



cpptraj <<_EOF
parm run1/usable_stH3core.psf
#trajin run2/one.dcd
trajin run2/stH3core_2centered.dcd

distance end-to-end :143-152 :73-74 out stH3core-dist-etd_exit2.dat

_EOF



cpptraj <<_EOF
parm run1/usable_stH3core.psf
#trajin run3/one.dcd
trajin run3/stH3core_3centered.dcd

distance end-to-end :1-5,290-294 :73-74 out stH3core-dist-etd_entry3.dat

_EOF



cpptraj <<_EOF
parm run1/usable_stH3core.psf
#trajin run3/one.dcd
trajin run3/stH3core_3centered.dcd

distance end-to-end :143-152 :73-74 out stH3core-dist-etd_exit3.dat

_EOF



cpptraj <<_EOF
parm run1/usable_stH3core.psf
#trajin run4/one.dcd
trajin run4/stH3core_4centered.dcd

distance end-to-end :1-5,290-294 :73-74 out stH3core-dist-etd_entry4.dat

_EOF



cpptraj <<_EOF
parm run1/usable_stH3core.psf
#trajin run4/one.dcd
trajin run4/stH3core_4centered.dcd

distance end-to-end :143-152 :73-74 out stH3core-dist-etd_exit4.dat

_EOF

mv /Users/jlee295/cenp/CAFEMOL/stH3core/*.dat /Users/jlee295/cenp/CAFEMOL/analyses/EtD/
