class CargaFisioterapium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :localidad, type: String
  field :dias_habiles, type: Integer
  field :mes, type: String
  field :anho, type: Integer
  has_many :carga_reporte_fisioterapia, dependent: :destroy
end
