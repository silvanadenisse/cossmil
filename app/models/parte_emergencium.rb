class ParteEmergencium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :mes, type: String
  field :enfermera, type: String


  belongs_to :user
  has_many :paciente_reporte_emergencia, dependent: :destroy
end
