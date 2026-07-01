#!/bin/bash

systems=(
    H3
    cenpa
    ltH3core
    ltcenpacore
    exnotailH3
    exnotailcenpa
    thruhelixH3
    thruhelixcenpa
    H3withcenpahelix
    cenpawithH3helix
    stH3core
    stcenpacore
    H3withcenpalatch
    cenpawithH3latch
    H3withcenpa_latch_helix
    cenpawithH3_latch_helix
)

for sys in "${systems[@]}"; do

    script="etd_${sys}"

    if [[ ! -f "$script" ]]; then
        echo "[MISSING] $script"
        continue
    fi

    echo "================================================="
    echo "Executing bash script: $script"
    echo "================================================="

    bash "$script"

done
