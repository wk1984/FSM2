#############################################################################
# Flexible Snow Model compilation script
#
# Richard Essery
# School of GeoSciences
# University of Edinburgh
#############################################################################
cd src
FC=gfortran
$FC -cpp -o FSM2 -O3 \
MODULES.F90 CANOPY.F90 CUMULATE.F90 DRIVE.F90 DUMP.F90 EBALFOR.F90  \
EBALOPN.F90 FSM2.F90 LUDCMP.F90 OUTPUT.F90 PHYSICS.F90 QSAT.F90     \
READMAPS.F90 SETUP.F90 SNOW.F90 SOIL.F90 SFEXCH.F90 SWRAD.F90       \
THERMAL.F90 TRIDIAG.F90
mv FSM2 ../FSM2
rm *.mod
cd ..
