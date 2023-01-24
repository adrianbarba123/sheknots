require './config/environment'

class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/customers" do
    customers = Customer.all
    customers.to_json
  end

end
