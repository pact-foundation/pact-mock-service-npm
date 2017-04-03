<img src="https://github.com/pact-foundation/pact-logo/blob/master/media/logo-black.png" width="200">

# Pact Mock Service for NPM

[![Build Status](https://travis-ci.org/pact-foundation/pact-mock-service-npm.svg?branch=master)](https://travis-ci.org/pact-foundation/pact-mock-service-npm)

Installation wrapper for standalone platform-specific executables packaged from the Ruby [pact-mock-service-gem] gem.

On install, this package selects and installs the correct [pact-mock-service-standalone] executable for your environment.

This node module downloads the appropriate platform-specific and installs it alongside `pact-mock-service` inside the node_modules directory.

## Usage

    $ npm i @pact-foundation/pact-mock-service
    $ node_modules/.bin/pact-mock-service --port 1234

[pact-mock-service-standalone]: https://github.com/bethesque/pact-mock_service
