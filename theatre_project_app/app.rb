require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/customer_controller')
require_relative('controllers/show_controller')

get '/?' do
  erb(:index)
end
