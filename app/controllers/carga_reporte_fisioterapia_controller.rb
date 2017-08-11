class CargaReporteFisioterapiaController < ApplicationController
  before_action :set_carga_reporte_fisioterapium, only: [:show, :edit, :update, :destroy]

  # GET /carga_reporte_fisioterapia
  # GET /carga_reporte_fisioterapia.json
  def index
    @carga_reporte_fisioterapia = CargaReporteFisioterapium.all
  end

  # GET /carga_reporte_fisioterapia/1
  # GET /carga_reporte_fisioterapia/1.json
  def show
  end

  # GET /carga_reporte_fisioterapia/new
  def new
    @carga_reporte_fisioterapium = CargaReporteFisioterapium.new
  end

  # GET /carga_reporte_fisioterapia/1/edit
  def edit
  end

  # POST /carga_reporte_fisioterapia
  # POST /carga_reporte_fisioterapia.json
  def create
    @carga_reporte_fisioterapium = CargaReporteFisioterapium.new(carga_reporte_fisioterapium_params)

    respond_to do |format|
      if @carga_reporte_fisioterapium.save
        format.html { redirect_to @carga_reporte_fisioterapium, notice: 'Carga reporte fisioterapium was successfully created.' }
        format.json { render :show, status: :created, location: @carga_reporte_fisioterapium }
      else
        format.html { render :new }
        format.json { render json: @carga_reporte_fisioterapium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carga_reporte_fisioterapia/1
  # PATCH/PUT /carga_reporte_fisioterapia/1.json
  def update
    respond_to do |format|
      if @carga_reporte_fisioterapium.update(carga_reporte_fisioterapium_params)
        format.html { redirect_to @carga_reporte_fisioterapium, notice: 'Carga reporte fisioterapium was successfully updated.' }
        format.json { render :show, status: :ok, location: @carga_reporte_fisioterapium }
      else
        format.html { render :edit }
        format.json { render json: @carga_reporte_fisioterapium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carga_reporte_fisioterapia/1
  # DELETE /carga_reporte_fisioterapia/1.json
  def destroy
    @carga_reporte_fisioterapium.destroy
    respond_to do |format|
      format.html { redirect_to carga_reporte_fisioterapia_url, notice: 'Carga reporte fisioterapium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carga_reporte_fisioterapium
      @carga_reporte_fisioterapium = CargaReporteFisioterapium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carga_reporte_fisioterapium_params
      params.require(:carga_reporte_fisioterapium).permit(:current_user_id, :carga_fisioterapium_id, :consulta_hora, :horas_trabajadas, :pacientes_dias, :dias_trabajados, :total)
    end
end
