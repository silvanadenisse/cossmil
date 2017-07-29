json.extract! paciente_reporte_emergencium, :id, :grado, :signos_vitales, :diagnostico, :tratamiento, :observaciones, :created_at, :updated_at
json.url paciente_reporte_emergencium_url(paciente_reporte_emergencium, format: :json)
