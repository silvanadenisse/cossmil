class ParteDiario
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :establecimiento, type: String
  field :localidad, type: String
  field :mes, type: String
  field :especialidad, type: String
  field :servicio_de, type: String
  field :clave, type: Integer
  field :inicio_consulta, type: Time
  field :fin_consulta, type: Time
  field :enfermera, type: String


  belongs_to :user
  has_many :paciente_reportes, dependent: :destroy
end
