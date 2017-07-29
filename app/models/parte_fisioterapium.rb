class ParteFisioterapium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :turno, type: String
  field :mes, type: String

  belongs_to :user
  has_many :paciente_reporte_fisioterapia, dependent: :destroy
end
