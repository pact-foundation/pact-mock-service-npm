#!/bin/bash -e

export GEM_VERSION=0.5.1
export RELEASE_VERSION=1
export PACKAGE_VERSION=${GEM_VERSION}-${RELEASE_VERSION}

scripts/build_standalone_packages.sh

export STANDALONE_PACKAGE_NAME="pact-mock-service-$PACKAGE_VERSION-win"
export NPM_PACKAGE_NAME='pact-mock-service-win'
export SUFFIX='win'
scripts/package_for_npm.sh

export STANDALONE_PACKAGE_NAME="pact-mock-service-$PACKAGE_VERSION-osx"
export NPM_PACKAGE_NAME='pact-mock-service-osx'
export SUFFIX='osx'
scripts/package_for_npm.sh

export STANDALONE_PACKAGE_NAME="pact-mock-service-$PACKAGE_VERSION-linux-x86"
export NPM_PACKAGE_NAME='pact-mock-service-linux-x86'
export SUFFIX='linux-x86'
scripts/package_for_npm.sh

export STANDALONE_PACKAGE_NAME="pact-mock-service-$PACKAGE_VERSION-linux-x86_64"
export NPM_PACKAGE_NAME='pact-mock-service-linux-x86_64'
export SUFFIX='linux-x86_64'
scripts/package_for_npm.sh

