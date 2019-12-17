require('sinatra')
require('sinatra/contrib/all')
require_relative('../models/customer.rb')
require_relative('../models/show.rb')
also_reload('../models/*')

get '/shows/?' do
  @shows = Show.all
  erb(:"shows/index")
end
