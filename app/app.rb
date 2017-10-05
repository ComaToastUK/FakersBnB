 ENV['RACK_ENV'] ||='development'

require 'sinatra/base'
require 'sinatra/flash'
require_relative 'datamapper-setup'

class FakersBnB < Sinatra::Base

  enable :sessions
    set :session_secret, 'super secret'

  get '/' do
    redirect '/listings/new'
  end

  get '/listings' do
    @listings = Listing.all
    erb :'listings/index'
  end

  post '/listings' do
    Listing.create(  title: params[:title],
                     price: params[:price],
                     location: params[:location],
                     imageurl: params[:imageurl])
    redirect '/listings'
  end

  get '/listings/new' do
    erb :'listings/new'
  end

  get '/listings/filter' do
    @filter_by_location = session[:filter_by_location]
    @listings = Listing.all
    erb :'listings/filter'
  end

  post '/listings/filter' do
    session[:filter_by_location] = params[:filter_by_location] #'penge'
      redirect 'listings/filter'
  end

end
