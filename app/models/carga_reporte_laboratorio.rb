class CargaReporteLaboratorio
  include Mongoid::Document
  field :total, type: Integer
  field :total_examenes, type: Integer
end
