class PacienteReporteFisioterapium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :num_sesion, type: Integer
  field :diagnostico, type: String
  field :procedencia, type: String
  field :tipo_consulta, type: String
  field :tipo_asegurado, type: String
  field :edad, type: Integer

  belongs_to :paciente
  belongs_to :parte_fisioterapium
end
