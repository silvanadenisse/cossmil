class PacienteReporteRayosX
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :estudios, type: String
  field :ceh, type: String
  field :ta, type: String
  field :edad, type: Integer
  field :hc, type: Integer
  field :uno, type: Integer
  field :dos, type: Integer
  field :tres, type: Integer
  field :cuatro, type: Integer
  field :cinco, type: Integer
  field :observaciones, type: String

  belongs_to :paciente
  belongs_to :parte_rayos_x
end
