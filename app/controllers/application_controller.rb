require './config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  configure do
    set :public_folder, 'public'
    set :default_content_type, :json
    enable :sessions
    set :session_secret, ENV["SESSION_SECRET"]

    # use Rack::Session::Cookie, :key => 'rack.session',
    #                             :path => '/',
    #                             :secret => ENV["SESSION_SECRET"]
  end


  get "/customers" do
    customers = Customer.all
    customers.to_json

  get "/" do
    "Welcome"
  end

  get "/me" do
    @current_user  ||= User.find_by_id(session[:user_id]) if session[:user_id]
    if @current_user
        halt 200, {user: @current_user}.to_json
    else
      halt 400, {message: "No one is logged in!"}.to_json
    end

  end

end
