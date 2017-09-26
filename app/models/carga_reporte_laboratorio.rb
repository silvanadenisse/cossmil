class CargaReporteLaboratorio
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :total, type: Integer
  field :total_examenes, type: Integer

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
  field :hematologia, type: Integer
  field :bioquimica, type: Integer
  field :serologia, type: Integer
  field :orinas, type: Integer
  field :heces, type: Integer
  field :gsanquineo, type: Integer
end
