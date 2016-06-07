var path = require('path');
var isWindows = process.platform === 'win32';

var cwd = path.resolve(__dirname, 'bin');
var file = ('pact-mock-service' + (isWindows ? '.bat' : ''));

module.exports = {
	cwd: cwd,
	file: file,
	fullPath: path.resolve(cwd, file).trim()
};