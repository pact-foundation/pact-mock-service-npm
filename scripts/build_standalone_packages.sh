#!/bin/bash
mkdir -p build
cd build
if [ ! -d "pact-mock_service" ]; then
  git clone git@github.com:bethesque/pact-mock_service.git
  cd pact-mock_service
else
  cd pact-mock_service
  git pull
fi

git checkout tags/v${GEM_VERSION}

bundle
bundle exec rake package
