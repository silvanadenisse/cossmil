class ParteEmergencium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :mes, type: String
  field :anho, type: String


  belongs_to :user
  has_many :paciente_reporte_emergencia, dependent: :destroy
end
