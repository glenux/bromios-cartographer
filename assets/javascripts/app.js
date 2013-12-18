//= require 'jquery-1.10.2'
//= require 'keymaster-1.6.1'
//x require_tree .

/*jslint browser: true, devel: true, white: true */
/*global document, console, jQuery, key */
(function (global, $) {
	"use strict";

	$(document).ready(function () {
		console.log('hello');
	});

	key('a', function() {
		console.log('Add');
	});

	key('enter', function() {
		console.log('Pressed enter');
	});

	key('c', function() {
		console.log('Add Center');
	});
	// nodejs tweak
	// if(typeof module !== 'undefined') module.exports = key;
}(this, jQuery, key));

