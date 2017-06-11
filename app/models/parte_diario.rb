class ParteDiario
  include Mongoid::Document
  field :fecha, type: Date
  field :carnet_asegurado, type: String
  field :carnet_beneficiario, type: String
  field :diagnostico, type: String
  field :edad, type: Integer
  field :sexo, type: Mongoid::Boolean
  field :tipo_consulta, type: Mongoid::Boolean
  field :tipo_asegurado, type: Mongoid::Boolean
  field :fuerza, type: Mongoid::Boolean
end
