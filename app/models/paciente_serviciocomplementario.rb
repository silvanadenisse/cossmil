class PacienteServiciocomplementario
  include Mongoid::Document
  field :estudio, type: String
  field :diagnostico, type: String
end
