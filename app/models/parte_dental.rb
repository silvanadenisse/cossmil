class ParteDental
  include Mongoid::Document
    include Mongoid::Attributes::Dynamic

  field :mes, type: String
  field :clave, type: Integer
  field :inicio_consulta, type: Time
  field :fin_consulta, type: Time
  field :enfermera, type: String
  belongs_to :user
  has_many :paciente_reporte_dentals, dependent: :destroy

  def obtenerMasculinoN
  	val = 0
  	paciente_reporte_dentals.each do|paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
  		if @paciente.sexo == 'Masculino' && paciente_reporte.tipo_consulta == 'Primera'
  			val = val + 1  			
  		end
  	end
  	val
  end

  def obtenerMasculinoR
  	val = 0
  	paciente_reporte_dentals.each do|paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
  		if  @paciente.sexo == 'Masculino' && paciente_reporte.tipo_consulta == 'Repetida'
  			val = val+1  			
  		end
  	end
  	val
  end


  def obtenerLetraA
    val = 0
    paciente_reporte_dentals.each do|paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if  @paciente.letra_asegurado == 'A'
        val = val+1       
      end
    end
    val
  end

end
