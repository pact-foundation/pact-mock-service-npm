#!/bin/bash

set -ex

echo "Packaging $STANDALONE_PACKAGE_NAME.$EXTENSION for npm as $NPM_PACKAGE_NAME.$EXTENSION"

mkdir -p dist

cd build
cp pact-mock_service-${GEM_VERSION}/pkg/pact-mock-service-* .
rm -rf $STANDALONE_PACKAGE_NAME

if [ $EXTENSION = "zip" ]; then
  unzip -q $STANDALONE_PACKAGE_NAME.$EXTENSION
else
  tar -xzf $STANDALONE_PACKAGE_NAME.$EXTENSION
fi

cp ../platforms/$SUFFIX/* $STANDALONE_PACKAGE_NAME
cp ../src/pact-mock-service.js $STANDALONE_PACKAGE_NAME
cp ../README.md $STANDALONE_PACKAGE_NAME

set +x #Don't echo the NPM key

echo "@pact-foundation:registry=https://registry.npmjs.org/" > $STANDALONE_PACKAGE_NAME/.npmrc
echo "//registry.npmjs.org/:_authToken=${NPM_KEY}" >> $STANDALONE_PACKAGE_NAME/.npmrc
echo "//registry.npmjs.org/:username=pact-foundation" >> $STANDALONE_PACKAGE_NAME/.npmrc
echo "//registry.npmjs.org/:email=pact-foundation@googlegroups.com" >> $STANDALONE_PACKAGE_NAME/.npmrc
echo "//registry.npmjs.org/:always-auth=true" >> $STANDALONE_PACKAGE_NAME/.npmrc

set -x

mv $STANDALONE_PACKAGE_NAME ../dist/$NPM_PACKAGE_NAME
