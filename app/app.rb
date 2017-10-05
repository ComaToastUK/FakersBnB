ENV['RACK_ENV'] ||='development'

require 'sinatra/base'
require 'sinatra/flash'
require_relative 'datamapper-setup'

class FakersBnB < Sinatra::Base

  enable :sessions
  
  get '/' do
    redirect '/listings'
  end

  get '/listings' do
    @listings = Listing.all
    erb :'listings/index'
  end

end
