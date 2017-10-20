class ParteFisioterapium
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :turno, type: String
  field :mes, type: String
  field :anho, type: String

  belongs_to :user
  has_many :paciente_reporte_fisioterapia, dependent: :destroy

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
  
end
