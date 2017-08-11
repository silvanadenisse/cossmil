class CargaReportesController < ApplicationController
  before_action :set_carga_reporte, only: [:show, :edit, :update, :destroy]

  # GET /carga_reportes
  # GET /carga_reportes.json
  def index
    @carga_reportes = CargaReporte.all
  end

  # GET /carga_reportes/1
  # GET /carga_reportes/1.json
  def show
  end

  # GET /carga_reportes/new
  def new
    @carga_reporte = CargaReporte.new
  end

  # GET /carga_reportes/1/edit
  def edit
  end

  # POST /carga_reportes
  # POST /carga_reportes.json
  def create
    @carga_reporte = CargaReporte.new(carga_reporte_params)

    respond_to do |format|
      if @carga_reporte.save
        format.html { redirect_to @carga_reporte, notice: 'Carga reporte was successfully created.' }
        format.json { render :show, status: :created, location: @carga_reporte }
      else
        format.html { render :new }
        format.json { render json: @carga_reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carga_reportes/1
  # PATCH/PUT /carga_reportes/1.json
  def update
    respond_to do |format|
      if @carga_reporte.update(carga_reporte_params)
        format.html { redirect_to @carga_reporte, notice: 'Carga reporte was successfully updated.' }
        format.json { render :show, status: :ok, location: @carga_reporte }
      else
        format.html { render :edit }
        format.json { render json: @carga_reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carga_reportes/1
  # DELETE /carga_reportes/1.json
  def destroy
    @carga_reporte.destroy
    respond_to do |format|
      format.html { redirect_to carga_reportes_url, notice: 'Carga reporte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carga_reporte
      @carga_reporte = CargaReporte.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carga_reporte_params
      params.require(:carga_reporte).permit(:current_user_id, :carga_parte_diario_id, :carga_horaria_contrato, :carga_horaria_cons_ext, :consultas_ofertadas, :consultas_programadas, :rendimiento_medico_hora, :horas_trabajadas, :rendimiento_medico_dia, :dias_trabajados, :rendimiento_porcentual, :productividad, :total_especialidad)
    end
end
