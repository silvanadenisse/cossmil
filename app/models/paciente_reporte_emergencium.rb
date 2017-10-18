class PacienteReporteEmergencium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :grado, type: String
  field :t, type: Integer
  field :p, type: Integer
  field :pa, type: String
  field :diagnostico, type: String
  field :tratamiento, type: String
  field :observaciones, type: String
  field :edad, type: Integer
  field :enfermera, type: String

  belongs_to :paciente
  belongs_to :parte_emergencium

  
end
