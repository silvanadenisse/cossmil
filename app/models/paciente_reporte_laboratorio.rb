class PacienteReporteLaboratorio
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :procedencia, type: String
  field :hematologia, type: Integer
  field :bioquimica, type: Integer
  field :serologia, type: Integer
  field :orinas, type: Integer
  field :heces, type: Integer
  field :gsanguineo, type: String
  field :edad, type: Integer
  field :fecha_consulta, type: Time, default: Time.now

  belongs_to :paciente
  belongs_to :area
  belongs_to :speciality
  belongs_to :parte_laboratorio
end
