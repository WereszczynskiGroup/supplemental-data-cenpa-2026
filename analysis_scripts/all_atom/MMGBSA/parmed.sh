#!/bin/bash

systems=(H3 cenpa ltH3core ltcenpacore exnotailH3 exnotailcenpa CSH3 CScenpa CSltH3core CSltcenpacore CSexnotailH3 CSexnotailcenpa)

dirs=(DNA+entrytail_no_latch DNA+entrylatch DNA+entryaNhelix DNA+exittail_no_latch DNA+exitlatch DNA+exitaNhelix)

runs=(run1 run2 run3 run4)

for sys in "${systems[@]}"; do
  for run in "${runs[@]}"; do
    for d in "${dirs[@]}"; do

      workdir="${sys}/${run}/${d}"
      [[ -d "$workdir" ]] || continue
      cd "$workdir" || continue

      # Start fresh log per directory
      : > parmed.log

      # Entry vs exit
      if [[ "$d" == *entry* ]]; then
        tag="entry"
        com="comen"
        lig="ligen"
        rec="recen"
      else
        tag="exit"
        com="comex"
        lig="ligex"
        rec="recex"
      fi

      # ---------- COMPLEX ----------
      if [[ -f "${sys}${com}.prmtop" ]]; then
        parmed <<EOF >> parmed.log 2>&1
parm ${sys}${com}.prmtop
changeRadii mbondi3
parmout ${sys}_com.prmtop
go
EOF
      fi

      # ---------- LIGAND ----------
      if [[ -f "${sys}${lig}.prmtop" ]]; then
        parmed <<EOF >> parmed.log 2>&1
parm ${sys}${lig}.prmtop
changeRadii mbondi3
parmout ${sys}_${tag}_lig.prmtop
go
EOF
      fi

      # ---------- RECEPTOR ----------
      if [[ -f "${sys}${rec}.prmtop" ]]; then
        parmed <<EOF >> parmed.log 2>&1
parm ${sys}${rec}.prmtop
changeRadii mbondi3
parmout ${sys}_${tag}_rec.prmtop
go
EOF
      fi

      cd - >/dev/null
    done
  done
done
