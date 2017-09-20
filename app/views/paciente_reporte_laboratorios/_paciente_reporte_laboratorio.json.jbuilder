json.extract! paciente_reporte_laboratorio, :id, :procedencia, :hematologia, :bioquimica, :serologia, :orinas, :heces, :gsanguineo, :nomlab, :created_at, :updated_at
json.url paciente_reporte_laboratorio_url(paciente_reporte_laboratorio, format: :json)
