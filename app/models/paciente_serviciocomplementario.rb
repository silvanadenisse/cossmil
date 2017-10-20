class PacienteServiciocomplementario
  include Mongoid::Document
  field :estudio, type: String
  field :diagnostico, type: String
  field :fecha_consulta, type: Time, default: Time.now
end
