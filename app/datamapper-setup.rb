require 'data_mapper'
require 'dm-postgres-adapter'
require_relative './models/listing'
require_relative './models/user'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "postgres://localhost/fakersbnb_#{ENV['RACK_ENV']}")
DataMapper.finalize
DataMapper.auto_upgrade!
