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
mv $STANDALONE_PACKAGE_NAME $NPM_PACKAGE_NAME
cd $NPM_PACKAGE_NAME

echo "@pact-foundation:registry=https://registry.npmjs.org/" > .npmrc
echo "//registry.npmjs.org/:_authToken=${NPM_KEY}" >> .npmrc
echo "//registry.npmjs.org/:username=pact-foundation" >> .npmrc
echo "//registry.npmjs.org/:email=pact-foundation@googlegroups.com" >> .npmrc
echo "//registry.npmjs.org/:always-auth=true" >> .npmrc

tar -czf ../../dist/${NPM_PACKAGE_NAME}.tar.gz * .npmrc
