Bundler.require

require 'sinatra/base'
require 'sinatra/asset_pipeline'

require 'compass'

	
class App < Sinatra::Base
	register Sinatra::AssetPipeline

	# Include these files when precompiling assets
	set :assets_precompile, %w(*.js *.css *.png *.jpg *.svg *.eot *.ttf *.woff)

	# Logical paths to your assets
	set :assets_prefix, %w(assets, vendor/assets)

	# Use another host for serving assets
	# set :assets_host, '<id>.cloudfront.net'

	# Serve assets using this protocol
	# set :assets_protocol, :http

	# CSS minification
	set :assets_css_compressor, :sass

	# JavaScript minification
	# set :assets_js_compressor, :uglifier

	# Register the AssetPipeline extention, make sure this goes after all customization
	configure do
		Compass.configuration do |compass|
			compass.http_path = "/"
			compass.css_dir = "stylesheets"
			compass.sass_dir = "sass"
			compass.images_dir = "images"
			compass.javascripts_dir = "javascripts"
		end
	end

	get '/app' do
		'Totooooo'
	end

	get '/' do
		haml :index
	end
end
