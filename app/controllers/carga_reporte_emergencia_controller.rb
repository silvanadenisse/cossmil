class CargaReporteEmergenciaController < ApplicationController
  before_action :set_carga_reporte_emergencium, only: [:show, :edit, :update, :destroy]

  # GET /carga_reporte_emergencia
  # GET /carga_reporte_emergencia.json
  def index
    @carga_reporte_emergencia = CargaReporteEmergencium.all
  end

  # GET /carga_reporte_emergencia/1
  # GET /carga_reporte_emergencia/1.json
  def show
  end

  # GET /carga_reporte_emergencia/new
  def new
    @carga_reporte_emergencium = CargaReporteEmergencium.new
  end

  # GET /carga_reporte_emergencia/1/edit
  def edit
  end

  # POST /carga_reporte_emergencia
  # POST /carga_reporte_emergencia.json
  def create
    @carga_reporte_emergencium = CargaReporteEmergencium.new(carga_reporte_emergencium_params)

     @carga_emergencium = CargaEmergencium.find(params[:carga_emergencium_id])
      if @carga_reporte_emergencium.save
      flash[:success] = "Medico agregado exitosamente."
      redirect_to "/carga_emergencia/"+@carga_reporte_emergencium.carga_emergencium.id.to_s
    else
      flash[:danger] = "Error al agregar medico"
      redirect_to carga_emergencium_path(@carga_emergencium)
    end
  end

  # PATCH/PUT /carga_reporte_emergencia/1
  # PATCH/PUT /carga_reporte_emergencia/1.json
  def update
    respond_to do |format|
      if @carga_reporte_emergencium.update(carga_reporte_emergencium_params)
        format.html { redirect_to @carga_reporte_emergencium, notice: 'Carga reporte emergencium was successfully updated.' }
        format.json { render :show, status: :ok, location: @carga_reporte_emergencium }
      else
        format.html { render :edit }
        format.json { render json: @carga_reporte_emergencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carga_reporte_emergencia/1
  # DELETE /carga_reporte_emergencia/1.json
  def destroy
    @carga_reporte_emergencium.destroy
    respond_to do |format|
      format.html { redirect_to carga_reporte_emergencia_url, notice: 'Carga reporte emergencium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carga_reporte_emergencium
      @carga_reporte_emergencium = CargaReporteEmergencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carga_reporte_emergencium_params
      params.require(:carga_reporte_emergencium).permit(:current_user_id, :carga_emergencium_id, :consulta_hora, :horas_trabajadas, :pacientes_dias, :dias_trabajados, :total)
    end
end
