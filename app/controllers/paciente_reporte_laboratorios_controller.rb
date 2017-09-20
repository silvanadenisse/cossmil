class PacienteReporteLaboratoriosController < ApplicationController
  before_action :set_paciente_reporte_laboratorio, only: [:show, :edit, :update, :destroy]

  # GET /paciente_reporte_laboratorios
  # GET /paciente_reporte_laboratorios.json
  def index
    @paciente_reporte_laboratorios = PacienteReporteLaboratorio.all
  end

  # GET /paciente_reporte_laboratorios/1
  # GET /paciente_reporte_laboratorios/1.json
  def show
  end

  # GET /paciente_reporte_laboratorios/new
  def new
    @paciente_reporte_laboratorio = PacienteReporteLaboratorio.new
  end

  # GET /paciente_reporte_laboratorios/1/edit
  def edit
  end

  # POST /paciente_reporte_laboratorios
  # POST /paciente_reporte_laboratorios.json
  def create
    @paciente_reporte_laboratorio = PacienteReporteLaboratorio.new(paciente_reporte_laboratorio_params)
    @parte_laboratorio = ParteLaboratorio.find(params[:parte_laboratorio_id])
      if @paciente_reporte_laboratorio.save
      flash[:success] = "Paciente agregado exitosamente."
      redirect_to "/parte_laboratorios/"+@paciente_reporte_laboratorios.parte_laboratorio.id.to_s
    else
      flash[:danger] = "Error al agregar paciente"
      redirect_to parte_laboratorio_path(@parte_laboratorio)
    end
  end

  # PATCH/PUT /paciente_reporte_laboratorios/1
  # PATCH/PUT /paciente_reporte_laboratorios/1.json
  def update
    respond_to do |format|
      if @paciente_reporte_laboratorio.update(paciente_reporte_laboratorio_params)
        format.html { redirect_to @paciente_reporte_laboratorio, notice: 'Paciente reporte laboratorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @paciente_reporte_laboratorio }
      else
        format.html { render :edit }
        format.json { render json: @paciente_reporte_laboratorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paciente_reporte_laboratorios/1
  # DELETE /paciente_reporte_laboratorios/1.json
  def destroy
    @paciente_reporte_laboratorio.destroy
    respond_to do |format|
      format.html { redirect_to paciente_reporte_laboratorios_url, notice: 'Paciente reporte laboratorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente_reporte_laboratorio
      @paciente_reporte_laboratorio = PacienteReporteLaboratorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_reporte_laboratorio_params
      params.require(:paciente_reporte_laboratorio).permit(:paciente_id, :parte_laboratorio_id, :procedencia, :hematologia, :bioquimica, :serologia, :orinas, :heces, :gsanguineo, :nomlab)
    end
end
