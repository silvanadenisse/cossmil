class CargaEmergencium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :dias_habiles, type: Integer
  field :mes, type: String
  field :anho, type: Integer


  has_many :carga_reporte_emergencia, dependent: :destroy
end
