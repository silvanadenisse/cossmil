json.extract! carga_reporte, :id, :carga_horaria_contrato, :carga_horaria_cons_ext, :consultas_ofertadas, :consultas_programadas, :rendimiento_medico_hora, :horas_trabajadas, :rendimiento_medico_dia, :dias_trabajados, :rendimiento_porcentual, :productividad, :total_especialidad, :created_at, :updated_at
json.url carga_reporte_url(carga_reporte, format: :json)
