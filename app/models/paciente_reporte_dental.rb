class PacienteReporteDental
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :tipo_consulta, type: String
  field :tipo_asegurado, type: String
  field :diagnostico, type: String
  field :tratamiento, type: String
  field :edad, type: Integer

  belongs_to :paciente
  belongs_to :parte_dental
end
