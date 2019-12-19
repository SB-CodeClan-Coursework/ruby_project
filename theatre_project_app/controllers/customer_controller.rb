require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/customer.rb')
require_relative('../models/show.rb')
also_reload('../models/*')


get '/customers/?' do
  @customers = Customer.all
  erb(:"customers/index")
end

get '/customers/new' do
  @shows = Show.all
  erb(:"customers/new")
end

post '/customers' do
  @customer = Customer.new(params)
  @customer.save
  redirect to '/customers'
end

get '/customers/:id' do
  @customer = Customer.find(params['id'].to_i)
  erb(:"customers/show")
end

get '/customers/:id/edit/?' do
  @shows = Show.all
  @customer = Customer.find(params['id'].to_i)
  erb(:"customers/edit")
end

post '/customers/:id/?' do
  customers = Customer.new(params)
  customers.update
  redirect to '/customers'
end

post '/customers/:id/delete/?' do
  customers = Customer.find(params['id'])
  customers.delete
  redirect to '/customers'
end
