class ParteDiario
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :establecimiento, type: String
  field :localidad, type: String
  field :mes, type: String
  field :especialidad, type: String
  field :servicio_de, type: String
  field :clave, type: Integer
  field :inicio_consulta, type: Time
  field :fin_consulta, type: Time
  field :enfermera, type: String


  belongs_to :user
  has_many :paciente_reportes, dependent: :destroy

  def obtenerMasculino
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.sexo == 'Masculino'
        val = val + 1
      end
    end
    val
  end

  def obtenerNuevos
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if repo.tipo_consulta == 'Nueva'
        val = val+1
      end
    end
    val
  end

  def obtenerFemenino
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.sexo == 'Femenino'
        val = val + 1
      end
    end
    val
  end

  def obtenerRepetidos
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if repo.tipo_consulta == 'Repetida'
        val = val+1
      end
    end
    val
  end


  def obtenerLetraA
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'A'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraB
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'B'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraC
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'C'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraZ
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'Z'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraY
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'Y'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraV
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'V'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraX
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'X'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraH
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'H'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraCAD
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'CAD'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraE
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'E'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraF
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'F'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraPM
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.letra_asegurado == 'PM'
        val = val+1
      end
    end
    val
  end

  def obtenerEjercito
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.fuerza == 'Ejercito'
        val = val+1
      end
    end
    val
  end

  def obtenerFab
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.fuerza == 'FAB'
        val = val+1
      end
    end
    val
  end

  def obtenerFnb
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.fuerza == 'FNB'
        val = val+1
      end
    end
    val
  end

  def obtenerCivil
    val = 0
    paciente_reportes.each do |repo|
      @paciente = Paciente.find(repo.paciente_id)
      if @paciente.fuerza == 'Civil'
        val = val+1
      end
    end
    val
  end
end
