class Area
include Mongoid::Document
include Mongoid::Attributes::Dynamic
  field :nombre, type: String
  has_many :users
  has_many :specialities
end
