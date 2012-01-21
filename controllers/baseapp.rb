require 'rubygems' if RUBY_VERSION < "1.9"
require 'sinatra'
require 'sinatra/base'
require 'sinatra/respond_to'
require File.join(File.dirname(__FILE__), '..', "config", "environment")

class BaseApp < Sinatra::Base
  register Sinatra::RespondTo
  set :public_folder, File.join(File.dirname(__FILE__), '..', '/assets')
  set :views, File.join(File.dirname(__FILE__), '..', '/views')
  get '/' do
    respond_to do |wants|
      wants.html {
	erb :index,
	layout => :top_template
      }
    end
  end
end
