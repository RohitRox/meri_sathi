class Incident
  include Mongoid::Document
  include Mongoid::Timestamps
  include Geocoder::Model::Mongoid

  field :title, type: String
  field :story, type: String
  field :date, type: Time
  field :victims, type: Integer
  field :address, type: String
  field :coordinates, :type => Array
  index({coordinates: '2d'})

  reverse_geocoded_by :coordinates
  geocoded_by :address

  attr_accessible :title, :story, :date, :victims, :coordinates

end
