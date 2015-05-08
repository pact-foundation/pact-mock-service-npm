#!/bin/bash

echo "Packaging $STANDALONE_PACKAGE_NAME.tar.gz for npm as $NPM_PACKAGE_NAME.tar.gz"
mkdir -p dist
cd build
cp pact-mock_service/pkg/pact-mock-service-*.tar.gz .
cp pact-mock_service/pkg/pact-mock-service-*.zip .
rm -rf pact-mock-service-osx
if [ $EXTENSION = "zip" ]; then
  echo "unzip $STANDALONE_PACKAGE_NAME.zip"
  unzip $STANDALONE_PACKAGE_NAME.zip
else
  tar -xzf $STANDALONE_PACKAGE_NAME.$EXTENSION
fi
cp ../$SUFFIX/package.json $STANDALONE_PACKAGE_NAME
cp ../$SUFFIX/README.md $STANDALONE_PACKAGE_NAME
cd $STANDALONE_PACKAGE_NAME
if [ $EXTENSION = "zip" ]; then
  zip -9r ../../dist/$NPM_PACKAGE_NAME.zip .
else
  tar -czf ../../dist/$NPM_PACKAGE_NAME.$EXTENSION .
fi
