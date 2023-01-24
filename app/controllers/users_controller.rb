class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    User.all.to_json
  end

  # POST: /users
  post "/users" do
    
  end

  # GET: /users/5
  get "/users/:id" do
    
  end

  # PATCH: /users/5
  patch "/users/:id" do
    
  end

  # DELETE: /users/5
  delete "/users/:id" do
    
  end
end
