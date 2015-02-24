# Contributing


## Building

* Set the GEM_VERSION and RELEASE_VERSION in `scripts/build.sh`
* Update the version number in each `package.json` file to $GEM_VERSION-$RELEASE_VERSION

    $ scripts/build.sh

## Publishing

    $ npm publish dist/pact-mock-service-osx.tar.gz
    $ npm publish dist/pact-mock-service-linux-x86.tar.gz
    $ npm publish dist/pact-mock-service-linux-x86_64.tar.gz
