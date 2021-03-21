# CPM_P1.1
Part 1 excercise 1 "Computació Paral·lela i Massiva"


# Commands

## Open tunnel
`ssh -NL 8283:zoo.lab.deim:22    NIF@portal1-deim.urv.cat`

## Connect
`ssh -X -p 8283 NIF@localhost`

## Send 
`scp -P 8283 <file> NIF@localhost:.`

## Execute code 
`srun -p <machine> -c <numthreads> time <file>`

Aviable machines:

`gat` with max `numthreads` 4 

`roquer` with max `numthreads` 8