# Contributing

## Publishing via Travis (recommended)

* Set the GEM_VERSION in `scripts/build.sh`
* Update the version number in each `package.json` file to $GEM_VERSION
* Commit

    $ git add package.json scripts/build.sh */package.json
    $ git commit -m "Releasing X.Y.Z"
    $ git tag -a "X.Y.Z" -m "Releasing X.Y.Z" && git push --follow-tags

## How to re-tag if a publish fails

Delete broken tag:

    $ git tag -d "X.Y.Z" && git push origin :refs/tags/X.Y.Z

Now you can re-tag and push as above.

## Building manually

* Set the GEM_VERSION in `scripts/build.sh`
* Update the version number in each `package.json` file to $GEM_VERSION

    $ scripts/clean.sh
    $ scripts/build.sh

## Publishing manually

Log in to npm as pact-foundation.

    $ npm publish dist/pact-mock-service-win32 --access public
    $ npm publish dist/pact-mock-service-linux-ia32 --access public
    $ npm publish dist/pact-mock-service-darwin --access public
    $ npm publish dist/pact-mock-service-linux-x64 --access public
    $ npm publish . --access public

## Updating NPM key

Log in to pact-foundation npm account in a browser and revoke the old key in the Tokens section.
Delete the env.global.secure key from travis.yml
Log in to npm via command line using the pact-foundation account.
Echo the ~/.npmrc file and grab the token out of it.

    $ gem install travis
    $ travis encrypt NPM_KEY=${NPM_KEY} --add env.global

