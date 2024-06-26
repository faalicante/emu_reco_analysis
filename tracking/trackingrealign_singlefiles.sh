#!/bin/bash
#launch makescanset brickID.0.0.0 BEFORE this code
#use this if the cells are already divided in single cp files

brickID=44

#finally doing cell by cell tracking with realign
#edit track.rootrc before launching

var1=$3
xbin=$((var1 / 6))
ybin=$((var1 % 6))

#starting from 1 to 19, not 0 to 18
xname=$((xbin + 1))
yname=$((ybin + 1))

echo "Starting tracking with realign"

makescanset -copyset -A=$brickID.0.0.0 -suff=cp.root -set=$brickID.0.$xname.$yname -from_plate=$1 -to_plate=$2 -v=2

emtra -set=$brickID.0.$xname.$yname -new -v=2

