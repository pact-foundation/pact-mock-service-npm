#!/bin/bash

echo "Packaging $STANDALONE_PACKAGE_NAME.tar.gz for npm as $NPM_PACKAGE_NAME.tar.gz"
mkdir -p dist
cd build
cp pact-mock_service/pkg/pact-mock-service-*.tar.gz .
rm -rf pact-mock-service-osx
tar -xzf $STANDALONE_PACKAGE_NAME.tar.gz
cp ../$SUFFIX/package.json $STANDALONE_PACKAGE_NAME
cp ../$SUFFIX/README.md $STANDALONE_PACKAGE_NAME
cd $STANDALONE_PACKAGE_NAME
tar -czf ../../dist/$NPM_PACKAGE_NAME.tar.gz .
