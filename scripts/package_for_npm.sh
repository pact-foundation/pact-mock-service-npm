#!/bin/bash

set -ex

echo "Packaging $STANDALONE_PACKAGE_NAME.tar.gz for npm as $NPM_PACKAGE_NAME.tar.gz"

mkdir -p dist

cd build
cp pact-mock_service/pkg/pact-mock-service-* .
rm -rf $STANDALONE_PACKAGE_NAME

if [ $EXTENSION = "zip" ]; then
  unzip $STANDALONE_PACKAGE_NAME.$EXTENSION
else
  tar -xzf $STANDALONE_PACKAGE_NAME.$EXTENSION
fi

cp ../$SUFFIX/package.json $STANDALONE_PACKAGE_NAME
cp ../$SUFFIX/README.md $STANDALONE_PACKAGE_NAME
cd $STANDALONE_PACKAGE_NAME

if [ $EXTENSION = "zip" ]; then
  zip -9r ../../dist/$NPM_PACKAGE_NAME.$EXTENSION .
else
  tar -czf ../../dist/$NPM_PACKAGE_NAME.$EXTENSION .
fi
