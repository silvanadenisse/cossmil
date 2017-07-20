class PacienteReporte
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :diagnostico, type: String
  field :tratamiento, type: String
  field :edad, type: Integer
  field :sexo, type: String
  field :tipo_consulta, type: String
  field :tipo_asegurado, type: String
  field :grado, type: String
  field :fuerza, type: String
  field :signos_vitales, type: String

  belongs_to :paciente
  belongs_to :parte_diario
  belongs_to :parte_dental
  belongs_to :parte_emergencium
end
