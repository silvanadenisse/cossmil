class PacientesController < ApplicationController
  before_action :set_paciente, only: [:show, :edit, :update, :destroy]

  # GET /pacientes
  # GET /pacientes.json
  def index
    @pacientes = Paciente.all
  end

  # GET /pacientes/1
  # GET /pacientes/1.json
  def show
  end

  # GET /pacientes/new
  def new
    @paciente = Paciente.new
  end

  # GET /pacientes/1/edit
  def edit
  end

  # POST /pacientes
  # POST /pacientes.json
  def create
    @paciente = Paciente.new(paciente_params)

    respond_to do |format|
      if @paciente.save
        format.html {redirect_to @paciente, notice: 'Paciente creado correctamente.'}
        format.json {render :show, status: :created, location: @paciente}
      else
        format.html {render :new}
        format.json {render json: @paciente.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /pacientes/1
  # PATCH/PUT /pacientes/1.json
  def update
    respond_to do |format|
      if @paciente.update(paciente_params)
        format.html {redirect_to @paciente, notice: 'Paciente actualizado correctamente.'}
        format.json {render :show, status: :ok, location: @paciente}
      else
        format.html {render :edit}
        format.json {render json: @paciente.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /pacientes/1
  # DELETE /pacientes/1.json
  def destroy
    @paciente.destroy
    respond_to do |format|
      format.html {redirect_to pacientes_url, notice: 'Paciente eliminado correctamente.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_paciente
    @paciente = Paciente.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def paciente_params
    params.require(:paciente).permit(:nombre, :apellido, :sexo, :edad, :matricula_titular, :fuerza, :matricula_paciente, :carnet, :grupo_sanguineo, :nacionalidad, :grado, :tipo_asegurado, :letra_asegurado, :user_id, :fecha_nacimiento)
  end
end
