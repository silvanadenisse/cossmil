class CargaReporte
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  
  field :medico, type: String
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
  field :total, type: Integer
  field :masculino, type: Integer
  field :nuevos, type: Integer
  field :femenino, type: Integer
  field :repetidos, type: Integer
  field :letraA, type: Integer
  field :letraB, type: Integer
  field :letraC, type: Integer
  field :letraZ, type: Integer
  field :letraY, type: Integer
  field :letraV, type: Integer
  field :letraX, type: Integer
  field :letraH, type: Integer
  field :letraCAD, type: Integer
  field :letraE, type: Integer
  field :letraF, type: Integer
  field :letraPM, type: Integer
  field :ejercito, type: Integer
  field :fab, type: Integer
  field :fnb, type: Integer
  field :civil, type: Integer



  belongs_to :area
  belongs_to :speciality  
  belongs_to :carga_parte_diario
end
