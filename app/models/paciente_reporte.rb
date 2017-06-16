class PacienteReporte
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :diagnostico, type: String
  field :edad, type: Integer
  field :tipo_consulta, type: Mongoid::Boolean
  field :tipo_asegurado, type: Mongoid::Boolean
  belongs_to :paciente
  belongs_to :parte_diario
end
