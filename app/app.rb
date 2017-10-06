 ENV['RACK_ENV'] ||='development'

require 'sinatra/base'
require 'sinatra/flash'
require_relative 'datamapper-setup'

class FakersBnB < Sinatra::Base

  use Rack::MethodOverride
  register Sinatra::Flash

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
                     imageurl: params[:imageurl],
                      details: params[:details])
    redirect '/listings'
  end

  get '/listings/new' do
    erb :'listings/new'
  end

### USERS #####
  get '/users/new' do
  @user = User.new
  erb :'user/new'
end

post '/users' do
  @user = User.create(email: params[:email],
                    password: params[:password],
                    password_confirmation: params[:password_confirmation])
  if @user.save
  session[:user_id] = @user.id
  redirect to('/listings/new')
  else
  flash.now[:errors] = @user.full_messages
  erb :'/user/new'
  end
end

  get '/sessions/new' do
    erb :'/sessions/new'
  end

  post '/sessions' do
    user = User.authenticate(params[:email], params[:password])
    if user
      session[:user_id] = user.id
      redirect to ('/listings/new')
    else
      flash.now[:errors] = ["Passwords don't match"]
      erb :'/sessions/new'
    end
  end

  delete '/sessions' do
    session[:user_id] = nil
    flash.keep[:notice] = 'goodbye!'
    redirect to '/listings'
  end

  helpers do
    def current_user
      @current_user ||= User.get(session[:user_id])
    end

    get '/listings/filter' do
    @filter_by_location = session[:filter_by_location]
    @min_price = session[:min_price]
    @max_price = session[:max_price]
    @listings = Listing.all
    erb :'listings/filter'
  end

  post '/listings/filter' do
    # p params
    session[:filter_by_location] = params[:filter_by_location]
    session[:min_price] = params[:min_price]
    session[:max_price] = params[:max_price]
    redirect '/listings/filter'
  end
end
