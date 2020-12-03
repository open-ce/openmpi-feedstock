#!/bin/sh

if [ ! -z "$OPAL_PREFIX" ]
then
    export OPEN_MPI_OPAL_PREFIX_OLD="$OPAL_PREFIX"
fi
if [ ! -z "$MPI_ROOT" ]
then
    export OPEN_MPI_MPI_ROOT_OLD="$MPI_ROOT"
fi
export OPAL_PREFIX="$CONDA_PREFIX"
export MPI_ROOT="$CONDA_PREFIX"
