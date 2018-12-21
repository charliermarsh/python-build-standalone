#!/usr/bin/env bash
# This Source Code Form is subject to the terms of the Mozilla Public
# License, v. 2.0. If a copy of the MPL was not distributed with this
# file, You can obtain one at https://mozilla.org/MPL/2.0/.

set -ex

ROOT=`pwd`

export CC=clang
export CXX=clang++

tar -xf openssl-${OPENSSL_VERSION}.tar.gz

pushd openssl-${OPENSSL_VERSION}

/usr/bin/perl ./Configure --prefix=/ darwin64-x86_64-cc

make -j ${NUM_CPUS}
make -j ${NUM_CPUS} install DESTDIR=${ROOT}/out
