class Speciality
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :nombre, type: String
  belongs_to :area
end
