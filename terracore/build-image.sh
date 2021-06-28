#!/bin/sh

VERSION=$1

git clone https://github.com/terra-money/core.git ./code
cd ./code
git fetch --all --tags
git checkout $VERSION

docker build -t terra-core:$VERSION .

cd ..
rm -rf ./code

docker build -t localterra-core:$VERSION --build-arg CORE_VERSION=$VERSION .