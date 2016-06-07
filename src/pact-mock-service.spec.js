/* global describe:true, before:true, after:true, it:true, global:true, process:true */

var expect = require('chai').expect;
var pact = require('./pact-mock-service');

describe("Pact Mock Service Platform Wrapper", function () {
	it("should return an object with cwd, file and fullPath properties", function () {
		expect(pact).to.be.an('object');
		expect(pact.cwd).to.be.ok;
		expect(pact.file).to.be.ok;
		expect(pact.fullPath).to.be.ok;
	});
});
