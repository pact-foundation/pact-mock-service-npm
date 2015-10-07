# Contributing


## Building

* Set the GEM_VERSION and RELEASE_VERSION in `scripts/build.sh`
* Update the version number in each `package.json` file to $GEM_VERSION-$RELEASE_VERSION

    $ scripts/clean.sh
    $ scripts/build.sh

## Publishing

    $ npm publish dist/pact-mock-service-win32.tar.gz
    $ npm publish dist/pact-mock-service-linux-ia32.tar.gz
    $ npm publish dist/pact-mock-service-darwin.tar.gz
    $ npm publish dist/pact-mock-service-linux-x64.tar.gz
    $ npm publish
