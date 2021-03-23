#!/bin/bash

rm -f $1$2.time

export OMP_NUM_THREADS=$2

echo "Starting first job"
srun -p $1 -c $2 time ./kmeanCPM.out 1> $1$2.res 2>> $1$2.time.temp 
echo "Starting second job"
srun -p $1 -c $2 time ./kmeanCPM.out 1>$1$2.res 2>> $1$2.time.temp 
echo "Starting third job"
srun -p $1 -c $2 time ./kmeanCPM.out 1>$1$2.res 2>> $1$2.time.temp 
echo "Starting fourth job"
srun -p $1 -c $2 time ./kmeanCPM.out 1>$1$2.res 2>> $1$2.time.temp 
echo "Starting fifth job"
srun -p $1 -c $2 time ./kmeanCPM.out 1>$1$2.res 2>> $1$2.time.temp 

cat $1$2.time.temp | grep user > $1$2.time

rm -f *.temp
echo "Done :D"