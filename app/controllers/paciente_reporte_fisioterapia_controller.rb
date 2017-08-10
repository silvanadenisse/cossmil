class PacienteReporteFisioterapiaController < ApplicationController
  before_action :set_paciente_reporte_fisioterapium, only: [:show, :edit, :update, :destroy]

  # GET /paciente_reporte_fisioterapia
  # GET /paciente_reporte_fisioterapia.json
  def index
    @paciente_reporte_fisioterapia = PacienteReporteFisioterapium.all
  end

  # GET /paciente_reporte_fisioterapia/1
  # GET /paciente_reporte_fisioterapia/1.json
  def show
  end

  # GET /paciente_reporte_fisioterapia/new
  def new
    @paciente_reporte_fisioterapium = PacienteReporteFisioterapium.new
  end

  # GET /paciente_reporte_fisioterapia/1/edit
  def edit
  end

  # POST /paciente_reporte_fisioterapia
  # POST /paciente_reporte_fisioterapia.json
  def create
    @paciente_reporte_fisioterapium = PacienteReporteFisioterapium.new(paciente_reporte_fisioterapium_params)
    @parte_fisioterapium = ParteFisioterapium.find(params[:parte_fisioterapium_id])
      if @paciente_reporte_fisioterapium.save
      flash[:success] = "Paciente agregado exitosamente."
      redirect_to "/parte_fisioterapia/"+@paciente_reporte_fisioterapium.parte_fisioterapium.id.to_s
    else
      flash[:danger] = "Error al agregar paciente"
      redirect_to parte_fisioterapium_path(@parte_fisioterapium)
    end
  end

  # PATCH/PUT /paciente_reporte_fisioterapia/1
  # PATCH/PUT /paciente_reporte_fisioterapia/1.json
  def update
    respond_to do |format|
      if @paciente_reporte_fisioterapium.update(paciente_reporte_fisioterapium_params)
        format.html { redirect_to @paciente_reporte_fisioterapium, notice: 'Paciente reporte fisioterapium was successfully updated.' }
        format.json { render :show, status: :ok, location: @paciente_reporte_fisioterapium }
      else
        format.html { render :edit }
        format.json { render json: @paciente_reporte_fisioterapium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paciente_reporte_fisioterapia/1
  # DELETE /paciente_reporte_fisioterapia/1.json
  def destroy
    @paciente_reporte_fisioterapium.destroy
    respond_to do |format|
      format.html { redirect_to paciente_reporte_fisioterapia_url, notice: 'Paciente reporte fisioterapium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente_reporte_fisioterapium
      @paciente_reporte_fisioterapium = PacienteReporteFisioterapium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_reporte_fisioterapium_params
      params.require(:paciente_reporte_fisioterapium).permit(:paciente_id, :parte_fisioterapium_id, :num_sesion, :diagnostico, :procedencia, :tipo_consulta, :tipo_asegurado, :edad)
    end
end
