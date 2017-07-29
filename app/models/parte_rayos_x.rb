class ParteRayosX
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  
  field :mes, type: String
  
  belongs_to :user
  has_many :paciente_reporte_rayos_x, dependent: :destroy
end
