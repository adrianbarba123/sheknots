require_relative './config/environment'
require 'sinatra'

<<<<<<< HEAD
# Allow CORS (Cross-Origin Resource Sharing) requests
use Rack::Cors do
  allow do
    origins '*'
    resource '*', headers: :any, methods: [:get, :post, :delete, :put, :patch, :options, :head]
  end
end

if ActiveRecord::Base.connection.migration_context.needs_migration?
  raise 'Migrations are pending. Run `rake db:migrate` to resolve the issue.'
end
=======
>>>>>>> b9f04790 (added controllers, fixing server)

use Rack::JSONBodyParser
run ApplicationController
use ProductsController
use UsersController
use PurchasesController
use SessionsController