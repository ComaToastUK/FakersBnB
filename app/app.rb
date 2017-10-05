 ENV['RACK_ENV'] ||='development'

require 'sinatra/base'
require 'sinatra/flash'
require_relative 'datamapper-setup'

class FakersBnB < Sinatra::Base

  enable :sessions
    set :session_secret, 'super secret'

  get '/' do
    redirect '/listings'
  end

  get '/listings' do
    @listings = Listing.all
    erb :'listings/index'
  end

  post '/listings' do
    @listing = Listing.create( title: params[:title],
                 price: params[:price],
                 location: params[:location],
                 imageurl: params[:imageurl],
                 details: params[:details]
               )
    redirect '/listings'
  end

  get '/listings/new' do
    erb :'listings/new'
  end

end
