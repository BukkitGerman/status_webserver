#!/usr/bin/env ruby

require "tilt/erb"
require "sinatra/base"
require "sinatra/static_assets"
require "sinatra/contrib"
require "sinatra/flash"
require "./routes"

class Webpage < Sinatra::Base
	register Sinatra::StaticAssets
  	register Sinatra::Contrib
  	register Sinatra::Flash

	set :session, true
	set :ver, "1.0"
	set :appname, "Status Server"
	set :title, settings.appname
	set :description, "A Webapplication to handle sensor data.."
	set :raise_errors, false
	set :javascripts, [""]
	set :stylesheets, [""]
	set :environment, :production
	set :root, File.dirname(__FILE__)
 	set :public_folder, File.dirname(__FILE__) + '/assets'

 	include AppRoutes
end

