
class App < Sinatra::Base
	# Include these files when precompiling assets
	set :assets_precompile, %w(app.js app.css *.png *.jpg *.svg *.eot *.ttf *.woff)

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
	register Sinatra::AssetPipeline


	get '/app' do
		'Totooooo'
	end

	get '/' do
		haml :index
	end
end
