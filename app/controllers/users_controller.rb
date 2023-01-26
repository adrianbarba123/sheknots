class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    User.all.to_json
    "just some users"
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

  post "/signup" do
    user = User.create(email: params[:email], password: params[:password]) #should include all params to be precise , password_confirmation: params[:password_confirmation]
    binding.pry
    if user.id
      session[:user_id] = user.id
      halt 201, {user: user}.to_json #halt 201 means something was created successfully
    else
      halt 400, {message: user.errors.full_messages.to_sentence}.to_json
    end
  end
end
