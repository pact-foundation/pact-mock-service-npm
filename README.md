# Pact Mock Service for NPM

This is a project to build the standalone Pact Mock Service and make it available via NPM.

For documentation about how to use the Pact Mock Server, see the [Pact Mock Server][pact-mock-service-gem] homepage.

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


[pact-mock-service-gem]: https://github.com/bethesque/pact-mock_service
