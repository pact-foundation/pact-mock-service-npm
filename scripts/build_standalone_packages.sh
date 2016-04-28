#!/bin/bash

set -e

mkdir -p build
cd build
if [ -d "pact-mock_service" ]; then
  rm -R pact-mock_service
fi

wget https://github.com/bethesque/pact-mock_service/archive/v${GEM_VERSION}.zip -O temp.zip
unzip temp.zip
cd pact-mock_service-${GEM_VERSION}


bundle
bundle exec rake package
