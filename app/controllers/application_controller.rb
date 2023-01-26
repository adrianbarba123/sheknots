require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :default_content_type, :json
    enable :sessions
    set :session_secret, ENV["SESSION_SECRET"]
  end

  get "/" do
    "Welcome"
  end

end
