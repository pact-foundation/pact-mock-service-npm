# Contributing

## Publishing via Travis (recommended)

* Set the GEM_VERSION in `scripts/build.sh`
* Update the version number in each `package.json` file to $GEM_VERSION
* Commit

    $ git add package.json scripts/build.sh */package.json
    $ git commit -m "Updating pact-mock_service gem version to 1.0.0"
    $ git tag -a "1.0.0" -m "Releasing 1.0.0"
    $ git push --follow-tags

## How to re-tag if a publish fails

Delete broken tag:

    $ git tag -d "1.0.0"
    $ git push origin :refs/tags/1.0.0

Now you can re-tag and push as above.

## Building manually

* Set the GEM_VERSION in `scripts/build.sh`
* Update the version number in each `package.json` file to $GEM_VERSION

    $ scripts/clean.sh
    $ scripts/build.sh

## Publishing manually

    $ npm publish dist/pact-mock-service-win32.tar.gz
    $ npm publish dist/pact-mock-service-linux-ia32.tar.gz
    $ npm publish dist/pact-mock-service-darwin.tar.gz
    $ npm publish dist/pact-mock-service-linux-x64.tar.gz

## Updating NPM key

Log in to pact-foundation npm account in a browser and revoke the old key in the Tokens section.
Delete the env.global.secure key from travis.yml
Log in to npm via command line using the pact-foundation account.
Echo the ~/.npmrc file and grab the token out of it.

    $ gem install travis
    $ travis encrypt NPM_KEY=${YOUR_KEY_HERE} --add env.global

