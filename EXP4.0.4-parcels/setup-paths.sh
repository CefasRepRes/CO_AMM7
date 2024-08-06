# set input paths to those used here: https://github.com/CefasRepRes/CO_AMM7

source ../add_mod_ada_intel.sh

EXP=$(basename ${PWD})

INPUT=/gpfs/data/cefas-shared/NEMO/jmmp/AMM7/
BDY_INPUT=/gpfs/data/cefas-shared/AMM7_reanalysis_V5/INPUTS
RESTART=/gpfs/data/cefas-shared/AMM7_reanalysis_V5/RESTARTS/restart_19930101.nc

NEMOSCRATCH=/gpfs/scratch/${USER}/NEMO/NEMO_4.0.4_CO9_package_tides/cfgs/
OUTPUT=${NEMOSCRATCH}/${CFG}/${EXP}/OUTPUT

ln -s ${BDY_INPUT}/LBC/GLOSEA BDY
ln -s ${BDY_INPUT}/LBC/BAL BDY_SKAG
ln -s ${BDY_INPUT}/NOWMAPS_rivers_1991_2024 RIV
ln -s ${INPUT}/grid/coordinates.bdy.nc .
ln -s ${INPUT}/grid/coordinates.skagbdy.nc .
ln -s ${INPUT}/grid/domain_cfg_co9amm7_MEsL51r10-07.nc .
ln -s ${INPUT}/inputs/SBC .
ln -s ${INPUT}/inputs/TIDE .

mkdir RESTARTS
ln -s ${RESTART} RESTARTS

mkdir -p ${OUTPUT}
ln -s ${OUTPUT} .
