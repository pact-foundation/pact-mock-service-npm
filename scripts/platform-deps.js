var exec = require('child_process').execSync,
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

// Install standalone package to node_modules, use exec to prevent --save or --save-dev flags to be sent.  DON'T USE `npm.commands.install`
exec('npm install ' + packageName + '@' + pkg.version, {cwd: path.resolve(__dirname, '..')});

	// if (error) {
	// 	console.error(error);
	// 	process.exit(1);
	// }
	console.log("Pact mock server for " + packageName + " installed successfully.");

	// Specify the bin path of the downloaded package in the package.json of pact-mock-service
	var p = require.resolve(packageName);
	// Setting path to be relative to project's package.json
	pkg.bin = { 'pact-mock-service' : './' + path.relative(path.dirname(pkgPath), p).split(path.sep).join('/')};

	// Write it to package.json
	fs.writeFileSync(pkgPath, JSON.stringify(pkg, null, 2));
