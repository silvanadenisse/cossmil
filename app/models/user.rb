class User
  include Mongoid::Document
  include Mongoid::Attributes::Dynamic
  field :name, type: String
  field :last_name, type: String
  field :role, type: String
  belongs_to :speciality
  field :subesp, type: String
  field :clave, type: Integer
  field :establecimiento, type: String
  field :localidad, type: String

  validates :name, :last_name, presence: true, numericality: false
  validates :clave, :localidad, :email, presence: true


  belongs_to :area
  has_many :pacientes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  ## Database authenticatable
  field :email, type: String, default: ''
  field :encrypted_password, type: String, default: ''


  ## Recoverable
  field :reset_password_token, type: String
  field :reset_password_sent_at, type: Time

  ## Rememberable
  field :remember_created_at, type: Time

  ## Trackable
  field :sign_in_count, type: Integer, default: 0
  field :current_sign_in_at, type: Time
  field :last_sign_in_at, type: Time
  field :current_sign_in_ip, type: String
  field :last_sign_in_ip, type: String

  ## Confirmable
  # field :confirmation_token,   type: String
  # field :confirmed_at,         type: Time
  # field :confirmation_sent_at, type: Time
  # field :unconfirmed_email,    type: String # Only if using reconfirmable

  ## Lockable
  # field :failed_attempts, type: Integer, default: 0 # Only if lock strategy is :failed_attempts
  # field :unlock_token,    type: String # Only if unlock strategy is :email or :both
  # field :locked_at,       type: Time

  has_and_belongs_to_many :parte_diarios
  has_and_belongs_to_many :parte_emergencia
  has_and_belongs_to_many :parte_rayos_xes
  has_and_belongs_to_many :parte_fisioterapia
  has_and_belongs_to_many :parte_dentals
  has_and_belongs_to_many :parte_laboratorios

end
