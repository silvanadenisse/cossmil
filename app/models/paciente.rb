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
  field :sexo, type: String
  field :grado, type: String
  field :tipo_asegurado, type: String
  field :letra_asegurado, type: String
  field :edad, type: Integer

  belongs_to :user
end
