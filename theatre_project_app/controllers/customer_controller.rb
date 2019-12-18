require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/customer.rb')
require_relative('../models/show.rb')
also_reload('../models/*')


get '/customers/?' do
  @customers = Customer.all
  erb(:"customers/index")
end

get '/customers/:id' do
  @customer = Customer.find(params['id'].to_i)
  erb(:"customers/show")
end

get '/customers/:id/edit' do
  @shows = Show.all
  @customer = Customer.find(params['id'].to_i)
  erb(:"customers/edit")
end

post '/customers/:id/edit' do
  customer = Customer.new(params)
  customer.update
  redirect to "/customers/#{params['id']}"
end

post '/customers/:id/edit' do
  customers = customer.find(params['id'])
  redirect to '/customers'
end

post '/customers/:id/delete' do
  customers = customer.find(params['id'])
  customers.delete
  redirect to '/customers'
end
