class CargaParteDiario
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :dias_habiles, type: Integer
  field :mes, type: String
  field :anho, type: Integer

  
  has_many :carga_reportes, dependent: :destroy

end
