json.extract! paciente, :id, :nombre, :apellido, :sexo, :matricula_titular, :fuerza, :matricula_paciente, :carnet, :grupo_sanguine, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
