#!/bin/bash

rm -f $1$2.time

srun -p $1 -c $2 time ./kmeanCPM.out 1> $1$2.res 2>> $1$2.time &
srun -p $1 -c $2 time ./kmeanCPM.out 2>> $1$2.time &
srun -p $1 -c $2 time ./kmeanCPM.out 2>> $1$2.time &
srun -p $1 -c $2 time ./kmeanCPM.out 2>> $1$2.time &
srun -p $1 -c $2 time ./kmeanCPM.out 2>> $1$2.time &
