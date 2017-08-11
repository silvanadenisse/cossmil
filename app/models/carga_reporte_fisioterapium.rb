class CargaReporteFisioterapium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :consulta_hora, type: Integer
  field :horas_trabajadas, type: Integer
  field :pacientes_dias, type: Integer
  field :dias_trabajados, type: Integer
  field :total, type: Integer

  belongs_to :current_user
  belongs_to :carga_fisioterapium
end
