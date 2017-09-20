class CargaReporteEmergencium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :medico, type: String
  field :consulta_hora, type: Integer
  field :horas_trabajadas, type: Integer
  field :pacientes_dias, type: Integer
  field :dias_trabajados, type: Integer
  field :total, type: Integer
  field :masculinoN, type: Integer
  field :masculinoR, type: Integer
  field :femeninoN, type: Integer
  field :femeninoR, type: Integer
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

  
  belongs_to :carga_emergencium
end
