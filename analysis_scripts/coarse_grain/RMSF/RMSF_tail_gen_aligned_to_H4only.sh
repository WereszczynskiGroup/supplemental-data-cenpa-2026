#!/bin/bash
source /Users/jlee295/.bashrc

BASE=/Users/jlee295/cenp/CAFEMOL/analyses/RMSF_tails

# H3
WORKDIR_H3="$BASE/H3"
PARM_H3="$HOME/view/CGview/H3/run1/minimized_H3_cg.psf"
TRAJPREFIX_H3="H3"
RMSSEL_H3=":460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA"
TAILSEL_H3=":295-348@CA:786-839@CA"
OUTPREFIX_H3="H3"

# CENP-A
WORKDIR_cenpa="$BASE/cenpa"
PARM_cenpa="$HOME/view/CGview/cenpa/run1/minimized_cenpa_cg.psf"
TRAJPREFIX_cenpa="cenpa"
RMSSEL_cenpa=":464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA"
TAILSEL_cenpa=":295-347@CA:790-842@CA"
OUTPREFIX_cenpa="cenpa"

# ltH3core
WORKDIR_ltH3core="$BASE/ltH3core"
PARM_ltH3core="$HOME/view/CGview/ltH3core/run1/minimized_ltH3core_cg.psf"
TRAJPREFIX_ltH3core="ltH3core"
RMSSEL_ltH3core=":459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA"
TAILSEL_ltH3core=":295-347@CA:785-837@CA"
OUTPREFIX_ltH3core="ltH3core"

# ltcenpacore
WORKDIR_ltcenpacore="$BASE/ltcenpacore"
PARM_ltcenpacore="$HOME/view/CGview/ltcenpacore/run1/minimized_ltcenpacore_cg.psf"
TRAJPREFIX_ltcenpacore="ltcenpacore"
RMSSEL_ltcenpacore=":465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA"
TAILSEL_ltcenpacore=":295-348@CA:791-844@CA"
OUTPREFIX_ltcenpacore="ltcenpacore"

# thruhelixH3
WORKDIR_thruhelixH3="$BASE/thruhelixH3"
PARM_thruhelixH3="$HOME/cenp/CAFEMOL/thruhelixH3/run1/usable_thruhelixH3.psf"
TRAJPREFIX_thruhelixH3="thruhelixH3"
RMSSEL_thruhelixH3=":459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA"
TAILSEL_thruhelixH3=":295-347@CA:785-837@CA"
OUTPREFIX_thruhelixH3="thruhelixH3"

# thruhelixcenpa
WORKDIR_thruhelixcenpa="$BASE/thruhelixcenpa"
PARM_thruhelixcenpa="$HOME/cenp/CAFEMOL/thruhelixcenpa/run1/usable_thruhelixcenpa.psf"
TRAJPREFIX_thruhelixcenpa="thruhelixcenpa"
RMSSEL_thruhelixcenpa=":465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA"
TAILSEL_thruhelixcenpa=":295-348@CA:791-844@CA"
OUTPREFIX_thruhelixcenpa="thruhelixcenpa"

# H3withcenpahelix
WORKDIR_H3withcenpahelix="$BASE/H3withcenpahelix"
PARM_H3withcenpahelix="$HOME/cenp/CAFEMOL/H3withcenpahelix/run1/usable_H3withcenpahelix.psf"
TRAJPREFIX_H3withcenpahelix="H3withcenpahelix"
RMSSEL_H3withcenpahelix=":460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA"
TAILSEL_H3withcenpahelix=":295-348@CA:786-839@CA"
OUTPREFIX_H3withcenpahelix="H3withcenpahelix"

# cenpawithH3helix
WORKDIR_cenpawithH3helix="$BASE/cenpawithH3helix"
PARM_cenpawithH3helix="$HOME/cenp/CAFEMOL/cenpawithH3helix/run1/usable_cenpawithH3helix.psf"
TRAJPREFIX_cenpawithH3helix="cenpawithH3helix"
RMSSEL_cenpawithH3helix=":464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA"
TAILSEL_cenpawithH3helix=":295-347@CA:790-842@CA"
OUTPREFIX_cenpawithH3helix="cenpawithH3helix"

# stH3core
WORKDIR_stH3core="$BASE/stH3core"
PARM_stH3core="$HOME/cenp/CAFEMOL/stH3core/run1/usable_stH3core.psf"
TRAJPREFIX_stH3core="stH3core"
RMSSEL_stH3core=":459-468@CA:478-503@CA:511-520@CA:949-958@CA:968-993@CA:1001-1010@CA"
TAILSEL_stH3core=":295-347@CA:785-837@CA"
OUTPREFIX_stH3core="stH3core"

# stcenpacore
WORKDIR_stcenpacore="$BASE/stcenpacore"
PARM_stcenpacore="$HOME/cenp/CAFEMOL/stcenpacore/run1/usable_stcenpacore.psf"
TRAJPREFIX_stcenpacore="stcenpacore"
RMSSEL_stcenpacore=":465-474@CA:484-509@CA:517-526@CA:961-970@CA:980-1005@CA:1013-1022@CA"
TAILSEL_stcenpacore=":295-348@CA:791-844@CA"
OUTPREFIX_stcenpacore="stcenpacore"

# H3withcenpalatch
WORKDIR_H3withcenpalatch="$BASE/H3withcenpalatch"
PARM_H3withcenpalatch="$HOME/cenp/CAFEMOL/H3withcenpalatch/run1/usable_H3withcenpalatch.psf"
TRAJPREFIX_H3withcenpalatch="H3withcenpalatch"
RMSSEL_H3withcenpalatch=":460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA"
TAILSEL_H3withcenpalatch=":295-348@CA:786-839@CA"
OUTPREFIX_H3withcenpalatch="H3withcenpalatch"

# cenpawithH3latch
WORKDIR_cenpawithH3latch="$BASE/cenpawithH3latch"
PARM_cenpawithH3latch="$HOME/cenp/CAFEMOL/cenpawithH3latch/run1/usable_cenpawithH3latch.psf"
TRAJPREFIX_cenpawithH3latch="cenpawithH3latch"
RMSSEL_cenpawithH3latch=":464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA"
TAILSEL_cenpawithH3latch=":295-347@CA:790-842@CA"
OUTPREFIX_cenpawithH3latch="cenpawithH3latch"

# H3withcenpa_latch_helix
WORKDIR_H3withcenpa_latch_helix="$BASE/H3withcenpa_latch_helix"
PARM_H3withcenpa_latch_helix="$HOME/cenp/CAFEMOL/H3withcenpa_latch_helix/run1/usable_H3withcenpa_latch_helix.psf"
TRAJPREFIX_H3withcenpa_latch_helix="H3withcenpa_latch_helix"
RMSSEL_H3withcenpa_latch_helix=":460-469@CA:479-504@CA:512-521@CA:951-960@CA:970-995@CA:1003-1012@CA"
TAILSEL_H3withcenpa_latch_helix=":295-348@CA:786-839@CA"
OUTPREFIX_H3withcenpa_latch_helix="H3withcenpa_latch_helix"

# cenpawithH3_latch_helix
WORKDIR_cenpawithH3_latch_helix="$BASE/cenpawithH3_latch_helix"
PARM_cenpawithH3_latch_helix="$HOME/cenp/CAFEMOL/cenpawithH3_latch_helix/run1/usable_cenpawithH3_latch_helix.psf"
TRAJPREFIX_cenpawithH3_latch_helix="cenpawithH3_latch_helix"
RMSSEL_cenpawithH3_latch_helix=":464-473@CA:483-508@CA:516-525@CA:959-968@CA:978-1003@CA:1011-1020@CA"
TAILSEL_cenpawithH3_latch_helix=":295-347@CA:790-842@CA"
OUTPREFIX_cenpawithH3_latch_helix="cenpawithH3_latch_helix"

# MAIN LOOP
#for SYS in H3 cenpa ltH3core ltcenpacore thruhelixH3 thruhelixcenpa H3withcenpahelix cenpawithH3helix; do
for SYS in stH3core stcenpacore H3withcenpalatch cenpawithH3latch H3withcenpa_latch_helix cenpawithH3_latch_helix; do

    WORKDIR_VAR="WORKDIR_${SYS}"
    PARM_VAR="PARM_${SYS}"
    TRAJPREFIX_VAR="TRAJPREFIX_${SYS}"
    RMSSEL_VAR="RMSSEL_${SYS}"
    TAILSEL_VAR="TAILSEL_${SYS}"
    OUTPREFIX_VAR="OUTPREFIX_${SYS}"

    WORKDIR="${!WORKDIR_VAR}"
    PARM="${!PARM_VAR}"
    TRAJPREFIX="${!TRAJPREFIX_VAR}"
    RMSSEL="${!RMSSEL_VAR}"
    TAILSEL="${!TAILSEL_VAR}"
    OUTPREFIX="${!OUTPREFIX_VAR}"

    echo "=== Processing $SYS ==="
    cd "$WORKDIR" || exit 1

    for RUN in 1 2 3 4; do
cpptraj <<EOF
parm $PARM
trajin ${TRAJPREFIX}_${RUN}centered.dcd
autoimage
rms run${RUN} $RMSSEL first
average crdset MyAvg
run
rms ref MyAvg
atomicfluct $TAILSEL byres out ${OUTPREFIX}_${RUN}tail.dat
run
EOF
    done

cpptraj <<EOF
readdata ${OUTPREFIX}_1tail.dat
readdata ${OUTPREFIX}_2tail.dat
readdata ${OUTPREFIX}_3tail.dat
readdata ${OUTPREFIX}_4tail.dat
avg ${OUTPREFIX}_1tail.dat:2 \
    ${OUTPREFIX}_2tail.dat:2 \
    ${OUTPREFIX}_3tail.dat:2 \
    ${OUTPREFIX}_4tail.dat:2 \
    oversets out ${OUTPREFIX}tail.dat
run
EOF

done
