class CargaDental
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :localidad, type: String
  field :dias_habiles, type: Integer
  field :mes, type: String
  field :anho, type: Integer

  validates :mes, presence: true
  validates :dias_habiles, numericality: true, presence: true
  
  has_many :carga_reporte_dentals, dependent: :destroy
end
