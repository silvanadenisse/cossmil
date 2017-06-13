class ParteDiario
  include Mongoid::Document
  field :mes, type: String
  field :servicio_de, type: String
  field :nombre_medico, type: String
  field :clave, type: Integer
  field :inicio_consulta, type: Time
  field :fin_consulta, type: Time
  field :enfermera, type: String

  has_many :pacientes

end
