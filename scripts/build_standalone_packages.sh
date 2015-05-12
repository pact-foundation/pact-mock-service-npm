#!/bin/bash

set -e

mkdir -p build
cd build
if [ ! -d "pact-mock_service" ]; then
  git clone git@github.com:bethesque/pact-mock_service.git
  cd pact-mock_service
else
  cd pact-mock_service
  git checkout master
  git pull origin master
  git fetch --tags
fi

git checkout tags/v${GEM_VERSION}

bundle
bundle exec rake package
