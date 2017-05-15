class Paciente
  include Mongoid::Document
  field :nombre, type: String
  field :apellido, type: String
  field :matricula_titular, type: String
  field :fuerza, type: String
  field :matricula_paciente, type: String
  field :carnet, type: Integer
  field :grupo_sanguineo, type: String
  field :nacionalidad, type: String
end
