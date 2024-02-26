# set input paths to those used here: https://github.com/CefasRepRes/CO_AMM7

INPUT=/gpfs/data/cefas-shared/NEMO/jmmp/AMM7
BDY_INPUT=/gpfs/data/cefas-shared/AMM7_reanalysis_V5/INPUTS
RESTART=/gpfs/data/cefas-shared/AMM7_reanalysis_V5/RESTARTS/

ln -s ${BDY_INPUT}/LBC/GLOSEA BDY
ln -s ${BDY_INPUT}/LBC/BAL BDY_SKAG
ln -s ${BDY_INPUT}/NOWMAPS_rivers_1991_2024 RIV
ln -s ${BDY_INPUT}/SBC .
ln -s ${INPUT}/grid/coordinates.bdy.nc .
ln -s ${INPUT}/grid/coordinates.skagbdy.nc .
ln -s ${INPUT}/grid/domain_cfg_co9amm7_MEsL51r10-07.nc .
ln -s ${INPUT}/inputs/TIDE .

mkdir RESTARTS
ln -s ${RESTART}/restart_19930101.nc RESTARTS

