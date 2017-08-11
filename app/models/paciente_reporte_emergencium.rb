class PacienteReporteEmergencium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :grado, type: String
  field :signos_vitales, type: String
  field :diagnostico, type: String
  field :tratamiento, type: String
  field :observaciones, type: String
  field :edad, type: Integer

  belongs_to :paciente
  belongs_to :parte_emergencium

  
end