class PacienteServiciocomplementariosController < ApplicationController
  before_action :set_paciente_serviciocomplementario, only: [:show, :edit, :update, :destroy]

  # GET /paciente_serviciocomplementarios
  # GET /paciente_serviciocomplementarios.json
  def index
    @paciente_serviciocomplementarios = PacienteServiciocomplementario.all
  end

  # GET /paciente_serviciocomplementarios/1
  # GET /paciente_serviciocomplementarios/1.json
  def show
  end

  # GET /paciente_serviciocomplementarios/new
  def new
    @paciente_serviciocomplementario = PacienteServiciocomplementario.new
  end

  # GET /paciente_serviciocomplementarios/1/edit
  def edit
  end

  # POST /paciente_serviciocomplementarios
  # POST /paciente_serviciocomplementarios.json
  def create
    @paciente_serviciocomplementario = PacienteServiciocomplementario.new(paciente_serviciocomplementario_params)

    respond_to do |format|
      if @paciente_serviciocomplementario.save
        format.html {redirect_to @paciente_serviciocomplementario, notice: 'Paciente serviciocomplementario was successfully created.'}
        format.json {render :show, status: :created, location: @paciente_serviciocomplementario}
      else
        format.html {render :new}
        format.json {render json: @paciente_serviciocomplementario.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /paciente_serviciocomplementarios/1
  # PATCH/PUT /paciente_serviciocomplementarios/1.json
  def update
    respond_to do |format|
      if @paciente_serviciocomplementario.update(paciente_serviciocomplementario_params)
        format.html {redirect_to @paciente_serviciocomplementario, notice: 'Paciente serviciocomplementario was successfully updated.'}
        format.json {render :show, status: :ok, location: @paciente_serviciocomplementario}
      else
        format.html {render :edit}
        format.json {render json: @paciente_serviciocomplementario.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /paciente_serviciocomplementarios/1
  # DELETE /paciente_serviciocomplementarios/1.json
  def destroy
    @paciente_serviciocomplementario.destroy
    respond_to do |format|
      format.html {redirect_to paciente_serviciocomplementarios_url, notice: 'Paciente serviciocomplementario was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_paciente_serviciocomplementario
    @paciente_serviciocomplementario = PacienteServiciocomplementario.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def paciente_serviciocomplementario_params
    params.require(:paciente_serviciocomplementario).permit(:estudio, :fecha_consulta, :diagnostico)
  end
end
