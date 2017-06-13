class PacienteReportesController < ApplicationController
  before_action :set_paciente_reporte, only: [:show, :edit, :update, :destroy]

  # GET /paciente_reportes
  # GET /paciente_reportes.json
  def index
    @paciente_reportes = PacienteReporte.all
  end

  # GET /paciente_reportes/1
  # GET /paciente_reportes/1.json
  def show
  end

  # GET /paciente_reportes/new
  def new
    @paciente_reporte = PacienteReporte.new
  end

  # GET /paciente_reportes/1/edit
  def edit
  end

  # POST /paciente_reportes
  # POST /paciente_reportes.json
  def create
    @paciente_reporte = PacienteReporte.new(paciente_reporte_params)

    respond_to do |format|
      if @paciente_reporte.save
        format.html { redirect_to @paciente_reporte, notice: 'Paciente reporte was successfully created.' }
        format.json { render :show, status: :created, location: @paciente_reporte }
      else
        format.html { render :new }
        format.json { render json: @paciente_reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paciente_reportes/1
  # PATCH/PUT /paciente_reportes/1.json
  def update
    respond_to do |format|
      if @paciente_reporte.update(paciente_reporte_params)
        format.html { redirect_to @paciente_reporte, notice: 'Paciente reporte was successfully updated.' }
        format.json { render :show, status: :ok, location: @paciente_reporte }
      else
        format.html { render :edit }
        format.json { render json: @paciente_reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paciente_reportes/1
  # DELETE /paciente_reportes/1.json
  def destroy
    @paciente_reporte.destroy
    respond_to do |format|
      format.html { redirect_to paciente_reportes_url, notice: 'Paciente reporte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paciente_reporte
      @paciente_reporte = PacienteReporte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paciente_reporte_params
      params.require(:paciente_reporte).permit(:pacientes_id, :parte_diarios_id)
    end
end
