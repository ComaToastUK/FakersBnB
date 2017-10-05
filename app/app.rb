ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
require 'sinatra/flash'

class FakersBnB < Sinatra::Base
  register Sinatra::Flash
  enable :sessions
  set :session_secret, 'super secret'

  post '/listings' do
    $listing = { title: params[:title],
                 price: params[:price],
                 location: params[:location],
                 imageurl: params[:imageurl]
               }
    redirect '/listings'
  end

  get '/listings/new' do
    erb :'listings/new'
  end

  get '/listings' do
  end
end
