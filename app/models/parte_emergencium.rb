class ParteEmergencium
  include Mongoid::Document
  field :mes, type: String
  field :enfermera, type: String


  belongs_to :user
end
