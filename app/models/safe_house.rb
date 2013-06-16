class SafeHouse
  include Mongoid::Document
  field :name, type: String
  field :address, type: String
  field :contact_name, type: String
  field :contact_no, type: String
  field :coordinates, type: Array
end
