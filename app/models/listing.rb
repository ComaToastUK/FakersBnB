class Listing

  include DataMapper::Resource

 property :id, Serial
 property :price, Integer
 property :title, String
 property :imageurl, Text
 property :location, String
 property :details, Text

end
