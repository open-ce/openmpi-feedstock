#!/bin/bash

# avoid absolute-paths in compilers
export CC=$(basename "$CC")
export CXX=$(basename "$CXX")

export LIBRARY_PATH="$PREFIX/lib"

BUILD_OPTS=""
if [ "${build_type}" = "cuda" ]; then
    BUILD_OPTS="--with-cuda=$CUDA_HOME"
fi
./configure --prefix=$PREFIX \
            --disable-dependency-tracking \
            $BUILD_OPTS

make -j 4
make install

mkdir -p "${PREFIX}/etc/conda/activate.d"
cp "${RECIPE_DIR}/../scripts/activate.sh" "${PREFIX}/etc/conda/activate.d/${PKG_NAME}_activate.sh"

mkdir -p "${PREFIX}/etc/conda/deactivate.d"
cp "${RECIPE_DIR}/../scripts/deactivate.sh" "${PREFIX}/etc/conda/deactivate.d/${PKG_NAME}_deactivate.sh"

