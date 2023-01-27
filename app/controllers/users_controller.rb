class UsersController < ApplicationController

  # GET: /users
  get "/users" do
    User.all.to_json
    
  end

  # POST: /users
  post "/users" do
    new_user = User.create(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation])
    binding.pry
    if new_user.id 
      halt 201, {user: new_user}.to_json
    else
      halt 400, {message: new_user.errors.full_messages.to_sentence}.to_json
    end
  end

  # GET: /users/5
  get "/users/:id" do
    user = User.find_by(id: params["id"])
    if user
      user.to_json
    else
      "User not found.".to_json
    end
  end

  # PATCH: /users/5
  patch "/users/:id" do
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]  
      if @current_user && @current_user.update(first_name: params[:first_name], last_name: params[:last_name], address: params[:address], phone_number: params[:phone_number])
        halt 200, {user: @current_user}.to_json
      else
        halt 400, {message: @current_user.errors.full_messages.to_sentence}.to_json
      end
  end

  # DELETE: /users/5
  delete "/users/:id" do
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
    if @current_user
      @current_user.destroy
      session.delete(:user_id)
      halt 200, {message: 'User deleted successfully'}.to_json
    else
      halt 404, {message: 'User not found'}.to_json #404 not found
    end
  end

  post "/signup" do
    user = User.create(email: params[:email], password: params[:password], password_confirmation: params[:password_confirmation]) #should include all params to be precise
    if user.id
      session[:user_id] = user.id
      halt 201, {user: user}.to_json #halt 201 means something was created successfully
    else
      halt 400, {message: user.errors.full_messages.to_sentence}.to_json
    end
  end
end
