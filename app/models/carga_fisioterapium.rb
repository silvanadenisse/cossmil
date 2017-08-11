class CargaFisioterapium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :dias_habiles, type: Integer
  field :mes, type: String
  field :anho, type: Integer
  belongs_to :current_user
  has_many :carga_reporte_fisioterapia, dependent: :destroy
end
