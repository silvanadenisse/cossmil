class ParteLaboratorio
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic

  field :mes, type: String

  belongs_to :user
  has_many :paciente_reporte_laboratorios, dependent: :destroy

  def obtenerLetraA
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'A'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraB
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'B'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraC
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'C'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraZ
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'Z'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraY
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'Y'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraV
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'V'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraX
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'X'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraH
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'H'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraCAD
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'CAD'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraE
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'E'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraF
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'F'
        val = val+1
      end
    end
    val
  end

  def obtenerLetraPM
    val = 0
    paciente_reporte_dentals.each do |paciente_reporte|
      @paciente = Paciente.find(paciente_reporte.paciente_id)
      if @paciente.letra_asegurado == 'PM'
        val = val+1
      end
    end
    val
  end

  def obtenerHematologia
    val = 0
    paciente_reporte_laboratorios.each do |paciente_reporte|
      if @paciente_reporte.hematologia
        val = val + 1
      end
    end
    val
  end

  def obtenerHematologia
    val = 0
    paciente_reporte_laboratorios.each do |paciente_reporte|
      if @paciente_reporte.hematologia
        val = val + 1
      end
    end
    val
  end

  def obtenerBioquimica
    val = 0
    paciente_reporte_laboratorios.each do |paciente_reporte|
      if @paciente_reporte.bioquimica
        val = val + 1
      end
    end
    val
  end

  def obtenerSerologia
    val = 0
    paciente_reporte_laboratorios.each do |paciente_reporte|
      if @paciente_reporte.serologia
        val = val + 1
      end
    end
    val
  end

  def obtenerOrinas
    val = 0
    paciente_reporte_laboratorios.each do |paciente_reporte|
      if @paciente_reporte.orinas
        val = val + 1
      end
    end
    val
  end

  def obtenerHeces
    val = 0
    paciente_reporte_laboratorios.each do |paciente_reporte|
      if @paciente_reporte.heces
        val = val + 1
      end
    end
    val
  end

  def obtenerGsanguineo
    val = 0
    paciente_reporte_laboratorios.each do |paciente_reporte|
      if @paciente_reporte.gsanguineo
        val = val + 1
      end
    end
    val
  end
end
