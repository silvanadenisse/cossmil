class PacienteReporteEmergenciaController < ApplicationController
  before_action :set_paciente_reporte_emergencium, only: [:show, :edit, :update, :destroy]

  # GET /paciente_reporte_emergencia
  # GET /paciente_reporte_emergencia.json
  def index
    @paciente_reporte_emergencia = PacienteReporteEmergencium.all
  end

  # GET /paciente_reporte_emergencia/1
  # GET /paciente_reporte_emergencia/1.json
  def show
  end

  # GET /paciente_reporte_emergencia/new
  def new
    @paciente_reporte_emergencium = PacienteReporteEmergencium.new
  end

  # GET /paciente_reporte_emergencia/1/edit
  def edit
  end

  # POST /paciente_reporte_emergencia
  # POST /paciente_reporte_emergencia.json
  def create
    @paciente_reporte_emergencium = PacienteReporteEmergencium.new(paciente_reporte_emergencium_params)
    @parte_emergencium = ParteEmergencium.find(params[:parte_emergencium_id])
    if @paciente_reporte_emergencium.save
      flash[:success] = "Paciente agregado exitosamente."
      redirect_to "/parte_emergencia/"+@paciente_reporte_emergencium.parte_emergencium.id.to_s
    else
      flash[:danger] = "Error al agregar paciente"
      redirect_to parte_emergencium_path(@parte_emergencium)
    end
  end

  # PATCH/PUT /paciente_reporte_emergencia/1
  # PATCH/PUT /paciente_reporte_emergencia/1.json
  def update
    respond_to do |format|
      if @paciente_reporte_emergencium.update(paciente_reporte_emergencium_params)
        format.html {redirect_to @paciente_reporte_emergencium, notice: 'Paciente reporte emergencium was successfully updated.'}
        format.json {render :show, status: :ok, location: @paciente_reporte_emergencium}
      else
        format.html {render :edit}
        format.json {render json: @paciente_reporte_emergencium.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /paciente_reporte_emergencia/1
  # DELETE /paciente_reporte_emergencia/1.json
  def destroy
    @paciente_reporte_emergencium.destroy
    respond_to do |format|
      format.html {redirect_to paciente_reporte_emergencia_url, notice: 'Paciente reporte emergencium was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_paciente_reporte_emergencium
    @paciente_reporte_emergencium = PacienteReporteEmergencium.find(params[:id])
  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_reporte_emergencium_params
      params.require(:paciente_reporte_emergencium).permit(:paciente_id, :parte_emergencium_id, :edad, :grado, :t, :p, :pa, :diagnostico, :tratamiento, :observaciones, :enfermera)
    end

end
