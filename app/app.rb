ENV['RACK_ENV'] ||='development'

require 'sinatra/base'
require 'sinatra/flash'

class FakersBnB < Sinatra::Base

  get '/' do
    redirect '/properties'
  end

  get '/properties' do
    '1 bedroom flat'
  end

end
