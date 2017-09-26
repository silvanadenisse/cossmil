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
    @partesEspecialidad = ParteLaboratorio.where(speciality_id: carga_reporte_laboratorio_params[:area_id])

    @letraA = 0
    @letraB = 0
    @letraC = 0
    @letraZ = 0
    @letraY = 0
    @letraV = 0
    @letraX = 0
    @letraH = 0
    @letraCAD = 0
    @letraE = 0
    @letraF = 0
    @letraPM = 0
    @hematologia = 0
    @bioquimica = 0
    @serologia = 0
    @orinas = 0
    @heces = 0
    @gsanguineo = 0


    @partesEspecialidad.each do |parte|
      @letraA = @letraA + parte.obtenerLetraA
      @letraA = @letraB + parte.obtenerLetraB
      @letraA = @letraC + parte.obtenerLetraC
      @letraA = @letraZ + parte.obtenerLetraZ
      @letraA = @letraY + parte.obtenerLetraY
      @letraA = @letraV + parte.obtenerLetraV
      @letraA = @letraX + parte.obtenerLetraX
      @letraA = @letraH + parte.obtenerLetraH
      @letraA = @letraCAD + parte.obtenerLetraCAD
      @letraA = @letraE + parte.obtenerLetraE
      @letraA = @letraF + parte.obtenerLetraF
      @letraA = @letraPM + parte.obtenerLetraPM
      @hematologia = @hematologia + parte.obtenerHematologia
      @bioquimica = @bioquimica + parte.obtenerBioquimica
      @serologia = @serologia + parte.obtenerSerologia
      @orinas = @orinas + parte.obtenerOrinas
      @heces = @heces + parte.obtenerHeces
      @gsanguineo = @gsanguineo + parte.obtenerGsanguineo

    end

    @carga_reporte_laboratorio.letraA = @letraA
    @carga_reporte_laboratorio.letraB = @letraB
    @carga_reporte_laboratorio.letraC = @letraC
    @carga_reporte_laboratorio.letraZ = @letraZ
    @carga_reporte_laboratorio.letraY = @letraY
    @carga_reporte_laboratorio.letraV = @letraV
    @carga_reporte_laboratorio.letraX = @letraX
    @carga_reporte_laboratorio.letraH = @letraH
    @carga_reporte_laboratorio.letraCAD = @letraCAD
    @carga_reporte_laboratorio.letraE = @letraE
    @carga_reporte_laboratorio.letraF = @letraF
    @carga_reporte_laboratorio.letraPM = @letraPM
    @carga_reporte_laboratorio.hematologia = @hematologia
    @carga_reporte_laboratorio.bioquimica = @bioquimica
    @carga_reporte_laboratorio.serologia = @serologia
    @carga_reporte_laboratorio.orinas = @orinas
    @carga_reporte_laboratorio.heces = @heces
    @carga_reporte_laboratorio.gsanguineo = @gsanguineo

    @area = Area.find(carga_reporte_laboratorio_params[:area_id])
    @carga_reporte_laboratorio.area = @area.nombre



    if @carga_reporte_laboratorio.save
      flash[:success] = "Especialidad agregada exitosamente."
      redirect_to "/carga_laboratorios/"+@carga_reporte_laboratorio.carga_laboratorio.id.to_s
    else
      flash[:danger] = "Error al agregar especialidad"
      redirect_to carga_laboratorio_path(@carga_laboratorio)
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
      params.require(:carga_reporte_laboratorio).permit(:carga_laboratorio_id, :speciality, :speciality_id, :letraA, :letraB, :letraC, :letraZ, :letraY, :letraV, :letraX, :letraH, :letraCAD, :letraE, :letraF, :letraPM, :hematologia, :bioquimica, :serologia, :orinas, :heces, :gsanguineo, :total, :total_examenes)
    end
end
