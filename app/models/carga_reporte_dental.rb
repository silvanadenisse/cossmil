class CargaReporteDental
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :observaciones, type: String
  field :horas_trabajadas, type: Integer
  field :consulta_hora, type: Integer
  field :hrs_trabajadas, type: Integer
  field :pacientes_dias, type: Integer
  field :dias_trabajados, type: Integer
  field :consultas_programadas, type: Integer
  field :total, type: Integer

  # belongs_to :current_user
  belongs_to :carga_dental
end
