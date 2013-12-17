
require 'bundler'
Bundler.setup :default, (ENV['RACK_ENV'] || 'development')
 
require 'sinatra/base'
require 'sinatra/asset_pipeline'

#require 'sprockets'
#require 'compass'
#require 'sprockets-sass'
#require 'bootstrap-sass'
#require 'handlebars_assets'
#require 'coffee-script'
 
#map '/assets' do
#	environment = Sprockets::Environment.new
#	environment.append_path 'assets/javascripts'
#	environment.append_path 'assets/stylesheets'
#	environment.append_path 'assets/templates' # for Handlebars templates
#	 
#	environment.append_path HandlebarsAssets.path
#	# Adds Twitter Bootstrap Javascripts
#	environment.append_path Compass::Frameworks['bootstrap'].templates_directory + '/../vendor/assets/javascripts'
#	run environment
#end
 

require './app'

run App
