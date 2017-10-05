require 'data_mapper'
require 'dm-postgres-adapter'


class Listing

  include DataMapper::Resource

 property :id, Serial
 property :price, Integer
 property :title, String
 property :imageurl, Text
 property :location, String

end
