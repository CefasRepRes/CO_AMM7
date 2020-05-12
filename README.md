# AMM7_zgr
AMM7 configuration for testing various vertical coordinate options

## Quick Start:

```
git clone git@github.com:JMMP-Group/AMM7_zgr.git
./AMM7_zgr/scripts/setup/amm7_setup_archer -w $PWD/test -x $PWD/test -s $PWD/AMM7_zgr
cd test/nemo/cfgs/AMM7/EXP00
```
Edit the project code in  `runscript.pbs` then:
```
qsub -q short runscript.pbs
```

_to follow_: setting up the ensemble experiments


forcing data:

[JMMP-COLLAB](http://gws-access.ceda.ac.uk/public/jmmp_collab/)
