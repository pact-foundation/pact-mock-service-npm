#!/bin/bash -e


scripts/build_standalone_packages.sh

export STANDALONE_PACKAGE_NAME='pact-mock-service-0.2.3.pre.rc1-1-osx'
export NPM_PACKAGE_NAME='pact-mock-service-osx'
export SUFFIX='osx'
scripts/package_for_npm.sh

export STANDALONE_PACKAGE_NAME='pact-mock-service-0.2.3.pre.rc1-1-linux-x86'
export NPM_PACKAGE_NAME='pact-mock-service-linux-x86'
export SUFFIX='linux-x86'
scripts/package_for_npm.sh

export STANDALONE_PACKAGE_NAME='pact-mock-service-0.2.3.pre.rc1-1-linux-x86_64'
export NPM_PACKAGE_NAME='pact-mock-service-linux-x86_64'
export SUFFIX='linux-x86_64'
scripts/package_for_npm.sh

