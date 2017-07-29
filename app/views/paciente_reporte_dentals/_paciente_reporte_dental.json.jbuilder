json.extract! paciente_reporte_dental, :id, :tipo_consulta, :tipo_asegurado, :diagnostico, :tratamiento, :created_at, :updated_at
json.url paciente_reporte_dental_url(paciente_reporte_dental, format: :json)
