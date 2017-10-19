class CargaEmergencium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :dias_habiles, type: Integer
  field :mes, type: String
  field :anho, type: Integer

  validates :dias_habiles, :mes, :anho, presence: true
  validates :anho, numericality: true

  has_many :carga_reporte_emergencia, dependent: :destroy
end
