class PacienteReporte
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  
  field :diagnostico, type: String
  field :tratamiento, type: String
  field :edad, type: Integer
  field :tipo_consulta, type: String
  field :tipo_asegurado, type: String
  field :grado, type: String
  field :fuerza, type: String
  field :signos_vitales, type: String
  field :estudios, type: String
  field :ceh, type: String
  field :ta, type: String
  field :hc, type: Integer
  field :uno, type: Integer
  field :dos, type: Integer
  field :tres, type: Integer
  field :cuatro, type: Integer
  field :cinco, type: Integer
  field :observaciones, type: String
  field :num_sesion, type: Integer
  field :procedencia, type: String
  field :num_recetas, type: Integer
  field :referido, type: Integer

  belongs_to :paciente
  belongs_to :parte_diario
  # belongs_to :parte_dental
  # belongs_to :parte_emergencium
  # belongs_to :parte_rayos_x
  # belongs_to :parte_fisioterapium
end
