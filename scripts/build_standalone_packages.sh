#!/bin/bash

set -e

mkdir -p build
cd build
if [ ! -d "pact-mock_service-${GEM_VERSION}" ]; then
  wget https://github.com/bethesque/pact-mock_service/archive/v${GEM_VERSION}.zip -O temp.zip
  unzip temp.zip
  rm temp.zip
fi

cd pact-mock_service-${GEM_VERSION}


bundle
bundle exec rake package
