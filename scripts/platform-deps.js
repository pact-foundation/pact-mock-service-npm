//Using preinstall hook, download and install the correct platform specific package for the mock server
var npm = require("npm");
var arch = "";
npm.load(function(er, npm) {

  if (process.platform === 'linux') {
    arch = '-' + process.arch;
  }
  console.log("Installing Pact mock server for " + process.platform + arch);
  npm.commands.install(['pact-mock-service-' + process.platform + arch], function(er, data) {
    if(er) {
      console.log(er);
      process.exit(1);
    }
    console.log("Pact mock server for - " + process.platform + arch + " installed successfully.");
  });
})
