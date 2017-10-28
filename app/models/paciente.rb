class Paciente
  include Mongoid::Document
  field :nombre, type: String
  field :apellido, type: String
  field :matricula_titular, type: String
  field :fuerza, type: String
  field :matricula_paciente, type: String
  field :carnet, type: String
  field :grupo_sanguineo, type: String
  field :nacionalidad, type: String
  field :sexo, type: String
  field :grado, type: String
  field :tipo_asegurado, type: String
  field :letra_asegurado, type: String
  field :fecha_nacimiento, type: DateTime
  field :edad, type: Integer

  belongs_to :user

  def getAge
    birth_date = fecha_nacimiento.to_date
    now = Time.now.utc.to_date
    now.year - birth_date.year - ((now.month > birth_date.month || (now.month == birth_date.month && now.day >= birth_date.day)) ? 0 : 1)
  end
end
