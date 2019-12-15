require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/customer.rb' )
also_reload( '../models/*' )

get '/?' do
  @customer
end

# get '/customer' do
#   @customer = Customer.all()
#   erb ( :"customer/index" )
# end
#
# get '/customer/:id' do
#   @customer = Customer.find(params['id'].to_i)
#   erb( :"customer/show" )
# end
