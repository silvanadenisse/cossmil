class PacienteReporte
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :diagnostico, type: String
  belongs_to :paciente
  belongs_to :parte_diario
end
