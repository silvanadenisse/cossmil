class ParteLaboratorio
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :mes, type: String

  belongs_to :user
  has_many :paciente_reporte_laboratorios, dependent: :destroy

  def obtenerActivoA
  	val = 0
  	paciente_reporte_laboratorios.each do|paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
  		if @paciente.tipo_asegurado == 'Activo' && paciente_reporte.letra == 'A'
  			val = val + 1  			
  		end
  	end
  	val
  end

  def obtenerActivoB
  	val = 0
  	paciente_reporte_laboratorios.each do|paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
  		if @paciente.tipo_asegurado == 'Activo' && paciente_reporte.letra == 'B'
  			val = val + 1  			
  		end
  	end
  	val
  end

  def obtenerActivoC
  	val = 0
  	paciente_reporte_laboratorios.each do|paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
  		if @paciente.tipo_asegurado == 'Activo' && paciente_reporte.letra == 'C'
  			val = val + 1  			
  		end
  	end
  	val
  end

  def obtenerPasivoZ
  	val = 0
  	paciente_reporte_laboratorios.each do|paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
  		if @paciente.tipo_asegurado == 'Pasivo' && paciente_reporte.letra == 'Z'
  			val = val + 1  			
  		end
  	end
  	val
  end

  def obtenerPasivoY
  	val = 0
  	paciente_reporte_laboratorios.each do|paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
  		if @paciente.tipo_asegurado == 'Pasivo' && paciente_reporte.letra == 'Y'
  			val = val + 1  			
  		end
  	end
  	val
  end

  def obtenerPasivoV
  	val = 0
  	paciente_reporte_laboratorios.each do|paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
  		if @paciente.tipo_asegurado == 'Pasivo' && paciente_reporte.letra == 'V'
  			val = val + 1  			
  		end
  	end
  	val
  end

  def obtenerPasivoX
  	val = 0
  	paciente_reporte_laboratorios.each do|paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
  		if @paciente.tipo_asegurado == 'Pasivo' && paciente_reporte.letra == 'X'
  			val = val + 1  			
  		end
  	end
  	val
  end

  def obtenerHematologia
  	val = 0
  	paciente_reporte_laboratorios.each do|paciente_reporte|
  		if @paciente_reporte.hematologia 
  			val = val + 1  			
  		end
  	end
  	val
  end
end
