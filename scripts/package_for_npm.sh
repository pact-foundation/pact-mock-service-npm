#!/bin/bash

set -ex

echo "Packaging $STANDALONE_PACKAGE_NAME.tar.gz for npm as $NPM_PACKAGE_NAME.tar.gz"

mkdir -p dist

cd build
cp pact-mock_service/pkg/pact-mock-service-* .
rm -rf pact-mock-service-${SUFFIX}
rm -rf $STANDALONE_PACKAGE_NAME

if [ "${SUFFIX}" == 'win32' ]; then
  unzip ${STANDALONE_PACKAGE_NAME}.zip
else
  tar -xzf ${STANDALONE_PACKAGE_NAME}.tar.gz
fi

cp ../$SUFFIX/package.json $STANDALONE_PACKAGE_NAME
cp ../$SUFFIX/README.md $STANDALONE_PACKAGE_NAME
cd $STANDALONE_PACKAGE_NAME

if [ "${SUFFIX}" == 'win32' ]; then
  zip -r ../../dist/$NPM_PACKAGE_NAME.zip .
else
  tar -czf ../../dist/$NPM_PACKAGE_NAME.tar.gz .
fi
