class CargaReporte
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  
  field :carga_horaria_contrato, type: Integer
  field :carga_horaria_cons_ext, type: Integer
  field :consultas_ofertadas, type: Integer
  field :consultas_programadas, type: Integer
  field :rendimiento_medico_hora, type: Integer
  field :horas_trabajadas, type: Integer
  field :rendimiento_medico_dia, type: Integer
  field :dias_trabajados, type: Integer
  field :rendimiento_porcentual, type: Integer
  field :productividad, type: Integer
  field :total_especialidad, type: Integer

  
  belongs_to :carga_parte_diario
end
