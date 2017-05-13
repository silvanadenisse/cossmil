class Medico
  include Mongoid::Document
  field :nombre, type: String
  field :apellido, type: String
  field :carnet, type: String

  belongs_to :area
end
