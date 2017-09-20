class CargaReporteLaboratoriosController < ApplicationController
  before_action :set_carga_reporte_laboratorio, only: [:show, :edit, :update, :destroy]

  # GET /carga_reporte_laboratorios
  # GET /carga_reporte_laboratorios.json
  def index
    @carga_reporte_laboratorios = CargaReporteLaboratorio.all
  end

  # GET /carga_reporte_laboratorios/1
  # GET /carga_reporte_laboratorios/1.json
  def show
  end

  # GET /carga_reporte_laboratorios/new
  def new
    @carga_reporte_laboratorio = CargaReporteLaboratorio.new
  end

  # GET /carga_reporte_laboratorios/1/edit
  def edit
  end

  # POST /carga_reporte_laboratorios
  # POST /carga_reporte_laboratorios.json
  def create
    @carga_reporte_laboratorio = CargaReporteLaboratorio.new(carga_reporte_laboratorio_params)

    respond_to do |format|
      if @carga_reporte_laboratorio.save
        format.html { redirect_to @carga_reporte_laboratorio, notice: 'Carga reporte laboratorio was successfully created.' }
        format.json { render :show, status: :created, location: @carga_reporte_laboratorio }
      else
        format.html { render :new }
        format.json { render json: @carga_reporte_laboratorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carga_reporte_laboratorios/1
  # PATCH/PUT /carga_reporte_laboratorios/1.json
  def update
    respond_to do |format|
      if @carga_reporte_laboratorio.update(carga_reporte_laboratorio_params)
        format.html { redirect_to @carga_reporte_laboratorio, notice: 'Carga reporte laboratorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @carga_reporte_laboratorio }
      else
        format.html { render :edit }
        format.json { render json: @carga_reporte_laboratorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carga_reporte_laboratorios/1
  # DELETE /carga_reporte_laboratorios/1.json
  def destroy
    @carga_reporte_laboratorio.destroy
    respond_to do |format|
      format.html { redirect_to carga_reporte_laboratorios_url, notice: 'Carga reporte laboratorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carga_reporte_laboratorio
      @carga_reporte_laboratorio = CargaReporteLaboratorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carga_reporte_laboratorio_params
      params.require(:carga_reporte_laboratorio).permit(:total, :total_examenes)
    end
end
