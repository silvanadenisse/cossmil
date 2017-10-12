class Area
include Mongoid::Document
include Mongoid::Attributes::Dynamic
  field :nombre, type: String
  validates :name, presence: true
  has_many :users
  has_many :specialities
end
