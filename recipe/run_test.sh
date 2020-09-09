#!/bin/bash
set -e

pushd $RECIPE_DIR/tests

mpicc helloworld.c -o helloworld_c
mpirun -n 4 ./helloworld_c

popd

