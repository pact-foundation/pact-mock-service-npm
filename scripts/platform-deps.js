var exec = require('child_process').exec,
	path = require('path'),
	fs = require('fs'),
	pkgPath = path.resolve(__dirname, '../package.json'),
	pkg = require(pkgPath);

var arch = "";
if (process.platform === 'linux') {
	arch = '-' + process.arch;
}

var packageName = 'pact-mock-service-' + process.platform + arch;
console.log("Installing Pact mock server for " + packageName);

// Install standalone package to node_modules, use exec to prevent --save or --save-dev flags to be used if user inputted.  DON'T USE `npm.commands.install`
exec('npm install ' + packageName + '@' + pkg.version, {cwd: path.resolve(__dirname, '..')}, function(error, stdout, stderr){
	if (error) {
		console.error(error);
		process.exit(1);
	}
	console.log("Pact mock server for " + packageName + " installed successfully.");
});


