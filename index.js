var arch = "";
if (process.platform === 'linux') {
	arch = '-' + process.arch;
}
var packageName = '@pact-foundation/pact-mock-service-' + process.platform + arch;

module.exports = require(packageName);