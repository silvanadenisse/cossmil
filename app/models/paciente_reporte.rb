class PacienteReporte
  include Mongoid::Document
  embedded_in :pacientes
  embedded_in :parte_diarios
end
