class Area
  include Mongoid::Document
  field :nombre, type: String
   has_many :users

end
