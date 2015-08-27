//Download and install the correct platform specific package for the mock service
var npm = require("npm");
var arch = "";
npm.load(function(er, npm) {

  if (process.platform === 'linux') {
    arch = '-' + process.arch;
  }
  console.log("Installing Pact mock service for " + process.platform + arch);

  //Install npm into the wrapping pact-mock-service node_modules directory to avoid nested node_modules
  npm.commands.install("../../", ['pact-mock-service-' + process.platform + arch], function(er, data) {
    if(er) {
      console.log(er);
      process.exit(1);
    }
    console.log("Pact mock service for - " + process.platform + arch + " installed successfully.");
  });
})
