#!/bin/bash -e

set -e

export GEM_VERSION=0.5.3
export RELEASE_VERSION=1
export PACKAGE_VERSION=${GEM_VERSION}-${RELEASE_VERSION}

scripts/build_standalone_packages.sh

export STANDALONE_PACKAGE_NAME="pact-mock-service-$PACKAGE_VERSION-win32"
export NPM_PACKAGE_NAME='pact-mock-service-win32'
export SUFFIX='win32'
export EXTENSION='zip'
scripts/package_for_npm.sh

export STANDALONE_PACKAGE_NAME="pact-mock-service-$PACKAGE_VERSION-osx"
export NPM_PACKAGE_NAME='pact-mock-service-darwin'
export SUFFIX='osx'
export EXTENSION='tar.gz'
scripts/package_for_npm.sh

export STANDALONE_PACKAGE_NAME="pact-mock-service-$PACKAGE_VERSION-linux-x86"
export NPM_PACKAGE_NAME='pact-mock-service-linux-ia32'
export SUFFIX='linux-x86'
export EXTENSION='tar.gz'
scripts/package_for_npm.sh

export STANDALONE_PACKAGE_NAME="pact-mock-service-$PACKAGE_VERSION-linux-x86_64"
export NPM_PACKAGE_NAME='pact-mock-service-linux-x64'
export SUFFIX='linux-x86_64'
export EXTENSION='tar.gz'
scripts/package_for_npm.sh
