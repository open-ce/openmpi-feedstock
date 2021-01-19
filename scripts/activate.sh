#!/bin/bash
# *****************************************************************
# (C) Copyright IBM Corp. 2020, 2021. All Rights Reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
# *****************************************************************

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
