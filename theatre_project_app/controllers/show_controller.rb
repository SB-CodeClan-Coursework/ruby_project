require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/customer.rb')
require_relative('../models/show.rb')
also_reload('../models/*')

get '/shows/?' do
  @shows = Show.all
  erb(:"shows/index")
end

get '/shows/:id/?' do
  @show = Show.find(params['id'].to_i)
  erb(:"shows/show")
end

post '/shows/:id/delete/?' do
  shows = Show.find(params['id'])
  shows.delete
  redirect to '/shows'
end
