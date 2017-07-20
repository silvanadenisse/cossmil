class ParteDental
  include Mongoid::Document
  field :mes, type: String
  field :clave, type: Integer
  field :inicio_consulta, type: Time
  field :fin_consulta, type: Time
  field :enfermera, type: String
end
