class PacienteReporteRayosXesController < ApplicationController
  before_action :set_paciente_reporte_rayos_x, only: [:show, :edit, :update, :destroy]

  # GET /paciente_reporte_rayos_xes
  # GET /paciente_reporte_rayos_xes.json
  def index
    @paciente_reporte_rayos_xes = PacienteReporteRayosX.all
  end

  # GET /paciente_reporte_rayos_xes/1
  # GET /paciente_reporte_rayos_xes/1.json
  def show
  end

  # GET /paciente_reporte_rayos_xes/new
  def new
    @paciente_reporte_rayos_x = PacienteReporteRayosX.new
  end

  # GET /paciente_reporte_rayos_xes/1/edit
  def edit
  end

  # POST /paciente_reporte_rayos_xes
  # POST /paciente_reporte_rayos_xes.json
  def create
    @paciente_reporte_rayos_x = PacienteReporteRayosX.new(paciente_reporte_rayos_x_params)
    @parte_rayos_x = ParteRayosX.find(params[:parte_rayos_x_id])
    if @paciente_rayos_x.save
      flash[:success] = "Paciente agregado exitosamente."
      redirect_to "/parte_diarios/"+@paciente_reporte_rayos_x.parte_rayos_x.id.to_s
    else
      flash[:danger] = "Error al agregar paciente"
      redirect_to parte_rayos_x_path(@parte_rayos_x)
    end
  end

  # PATCH/PUT /paciente_reporte_rayos_xes/1
  # PATCH/PUT /paciente_reporte_rayos_xes/1.json
  def update
    respond_to do |format|
      if @paciente_reporte_rayos_x.update(paciente_reporte_rayos_x_params)
        format.html { redirect_to @paciente_reporte_rayos_x, notice: 'Paciente reporte rayos x was successfully updated.' }
        format.json { render :show, status: :ok, location: @paciente_reporte_rayos_x }
      else
        format.html { render :edit }
        format.json { render json: @paciente_reporte_rayos_x.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paciente_reporte_rayos_xes/1
  # DELETE /paciente_reporte_rayos_xes/1.json
  def destroy
    @paciente_reporte_rayos_x.destroy
    respond_to do |format|
      format.html { redirect_to paciente_reporte_rayos_xes_url, notice: 'Paciente reporte rayos x was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente_reporte_rayos_x
      @paciente_reporte_rayos_x = PacienteReporteRayosX.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_reporte_rayos_x_params
      params.require(:paciente_reporte_rayos_x).permit(:estudios, :ceh, :ta, :edad, :hc, :uno, :dos, :tres, :cuatro, :cinco, :observaciones)
    end
end
