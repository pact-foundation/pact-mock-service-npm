/* global describe:true, before:true, after:true, it:true, global:true, process:true */

var cp = require('child_process');
var expect = require('chai').expect;
var pactPath = './pact-mock-service';

describe("Pact Mock Service Spec", function () {
	var instance;

	afterEach(function (done) {
		/*if(instance) {
			process.kill(instance.pid);
		}*/
		done();
	});

	describe("Start Pact", function () {
		context("when no options are set", function () {
			it("should start correctly with defaults", function (done) {
				//instance = cp.spawn(pactPath);
				done();
			});
		});

		context("when valid options are set", function () {
			// TODO: Fix SSL, some kind of horrible issues with Ruby 1.9.3 and SSL on the Pact Mock Service side
			/*it("should start correctly with ssl", function (done) {
			 server = serverFactory( { ssl: true});
			 server.start().then(function () {
			 expect(server.ssl).to.equal(true);
			 done();
			 });
			 });*/

			it("should start correctly with cors", function (done) {
				done();
			});

			it("should start correctly with port", function (done) {
				done();
			});

			it("should start correctly with host", function (done) {
				done();
			});

			it("should start correctly with spec", function (done) {
				done();
			});

			/*var fs = require('fs'),
				path = require('path'),
				dirPath = path.resolve(__dirname, '../.tmp' + Math.floor(Math.random() * 1000));
			beforeEach(function (done) {
				fs.mkdir(dirPath, done);
			});
			afterEach(function (done) {
				fs.rmdir(dirPath, done);
			});*/
			it("should start correctly with dir", function (done) {
				done();
			});

			it("should start correctly with log", function (done) {
				done();
			});

			it("should start correctly with consumer name", function (done) {
				done();
			});

			it("should start correctly with provider name", function (done) {
				done();
			});
		});
	});

	describe("Stop server", function () {
		context("when already started", function () {
			it("should stop running", function (done) {
				done();
			});
		});
	});
});
