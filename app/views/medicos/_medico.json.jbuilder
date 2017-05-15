json.extract! medico, :id, :nombre, :apellido, :carnet, :created_at, :updated_at
json.url medico_url(medico, format: :json)
