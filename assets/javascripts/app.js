
//= require 'extern/jquery-1.10.2.js'
//= require 'extern/keymaster-1.6.1.js'
//= require 'extern/handlebars-v1.1.2.js'
//= require 'extern/ember-1.2.0.js'
//= require 'extern/ember-data-1.0.0-beta3.js'
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

