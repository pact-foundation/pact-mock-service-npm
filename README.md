<img src="https://github.com/pact-foundation/pact-logo/blob/master/media/logo-black.png" width="200">

# Pact Mock Service for NPM

Installation wrapper for standalone platform-specific executables packaged from the Ruby [pact-mock-service-gem] gem.

On install, this package selects and installs the correct [pact-mock-service-standalone] executable for your environment.

This node module downloads the appropriate platform-specific and installs it alongside `pact-mock-service` inside the node_modules directory.

## Usage

    $ npm install pact-mock-service
    $ node_modules/.bin/pact-mock-service --port 1234

# Known issues

The packaged mock server always prints out the following message on startup. Have not yet traced the source.

```
No entry for terminal type "xterm-256color";
using dumb terminal settings.
```

On npm install, the following warnings will be displayed. They do not appear to affect the behaviour of the mock service.

```
npm WARN excluding symbolic link lib/ruby/lib/libcrypto.dylib -> libcrypto.1.0.0.dylib
npm WARN excluding symbolic link lib/ruby/lib/libedit.dylib -> libedit.0.dylib
npm WARN excluding symbolic link lib/ruby/lib/libffi.dylib -> libffi.6.dylib
npm WARN excluding symbolic link lib/ruby/lib/libgmp.dylib -> libgmp.10.dylib
npm WARN excluding symbolic link lib/ruby/lib/liblzma.dylib -> liblzma.5.dylib
npm WARN excluding symbolic link lib/ruby/lib/libncurses.dylib -> libncurses.5.dylib
npm WARN excluding symbolic link lib/ruby/lib/libreadline.dylib -> libedit.0.dylib
npm WARN excluding symbolic link lib/ruby/lib/libssl.dylib -> libssl.1.0.0.dylib
npm WARN excluding symbolic link lib/ruby/lib/libtermcap.dylib -> libncurses.5.dylib
npm WARN excluding symbolic link lib/ruby/lib/libyaml.dylib -> libyaml-0.2.dylib
```


[pact-mock-service-standalone]: https://github.com/bethesque/pact-mock_service
