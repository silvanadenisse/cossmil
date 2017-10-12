class CargaLaboratorio
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :mes, type: String
  field :anho, type: Integer

  validates :anho, numericality: true, presence:true

  has_many :carga_reporte_laboratorios, dependent: :destroy
end
