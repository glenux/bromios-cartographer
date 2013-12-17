
require 'bundler/setup'
Bundler.setup :default, (ENV['RACK_ENV'] || 'development')

require 'sinatra'
require 'sinatra/asset_pipeline/task.rb'
require './app'

Sinatra::AssetPipeline::Task.define! App
