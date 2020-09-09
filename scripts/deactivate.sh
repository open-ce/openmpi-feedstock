#!/bin/sh

if [ ! -z "$OPEN_MPI_OPAL_PREFIX_OLD" ]
then
    export OPAL_PREFIX=$OPEN_MPI_OPAL_PREFIX_OLD
    unset OPEN_MPI_OPAL_PREFIX_OLD
else
    unset OPAL_PREFIX
fi
if [ ! -z "$OPEN_MPI_MPI_ROOT_OLD" ]
then
    export MPI_ROOT=$OPEN_MPI_MPI_ROOT_OLD
    unset OPEN_MPI_MPI_ROOT_OLD
else
    unset MPI_ROOT
fi
