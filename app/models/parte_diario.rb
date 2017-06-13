class ParteDiario
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :mes, type: String
  field :servicio_de, type: String
  field :clave, type: Integer
  field :inicio_consulta, type: Time
  field :fin_consulta, type: Time
  field :enfermera, type: String

  has_many :pacientes
  belongs_to :user

end
