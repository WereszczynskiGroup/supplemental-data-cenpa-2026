input=${1}
output=${2}

rm leap.log

tleap -f - <<_EOF
source leaprc.protein.ff19SB
source leaprc.DNA.bsc1
source leaprc.water.opc
loadamberparams frcmod.ionslm_hfe_opc
loadoff atomic_ions.lib

unit = loadpdb ${input}

solvateBox unit OPCBOX { 50 30 50 }

quit
_EOF

unset waters
unset temp
unset new_wat
unset kcl

echo ""
waters=$(grep '\<Added.*residues\>' leap.log | awk '{print $2}')
echo $waters "water molecules in box without KCl."
temp=$(expr $waters / 370)
new_wat=$(expr $waters - $temp)
echo $new_wat "water molecules in box with 0.150 M KCl."
kcl=$(expr $new_wat / 370)
echo $kcl "KCl will be used as the cosolvent salt."
echo ""

tleap -f - <<_EOF
source leaprc.protein.ff19SB
source leaprc.DNA.bsc1
source leaprc.water.opc
loadamberparams frcmod.ionslm_hfe_opc
loadoff atomic_ions.lib


unit = loadpdb ${input}

saveamberparm unit ${output}_dry.prmtop ${output}_dry.rst7

solvateBox unit OPCBOX { 50 30 50 }

addIons unit K+ 0

addIons unit Cl- 0

addIonsRand unit K+ $kcl Cl- $kcl

set default FlexibleWater on

saveamberparm unit ${output}_solvated.prmtop ${output}_solvated.rst7

savepdb unit temp_solvated.pdb

quit
_EOF

vmd -dispdev text -eofexit <<_EOF
mol new ${output}_solvated.prmtop
mol addfile ${output}_solvated.rst7 waitfor all
[atomselect top all] set beta 0.00
[atomselect top all] set occupancy 0.00
[atomselect top all] writepdb ${output}.pdb
[atomselect top "(protein or nucleic) and noh"] set beta 1.00
[atomselect top all] writepdb reference_${output}.pdb
quit
_EOF

parmed ${output}_solvated.prmtop <<EOF
HMassRepartition
outparm hmr_${output}.prmtop
quit
EOF

rm temp_solvated.pdb
