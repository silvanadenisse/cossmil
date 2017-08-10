class CargaDental
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :mes, type: String
  field :dias_habiles, type: Integer

  belongs_to :user
  has_many :carga_reporte_dentals, dependent: :destroy
end
