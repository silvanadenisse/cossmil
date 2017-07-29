class ParteDental
  include Mongoid::Document
    include Mongoid::Attributes::Dynamic

  field :mes, type: String
  field :clave, type: Integer
  field :inicio_consulta, type: Time
  field :fin_consulta, type: Time
  field :enfermera, type: String
  belongs_to :user
  has_many :paciente_reporte_dentals, dependent: :destroy

end
class ParteDiario
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :mes, type: String
  field :clave, type: Integer
  field :inicio_consulta, type: Time
  field :fin_consulta, type: Time
  field :enfermera, type: String


  belongs_to :user
  has_many :paciente_reporte_dentals, dependent: :destroy
end