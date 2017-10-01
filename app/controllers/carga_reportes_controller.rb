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
    @partesDoctor = ParteDiario.where(user_id: carga_reporte_params[:medico_id])

    
    @masculino = 0
    @femenino = 0
    @nuevos = 0
    @repetidos = 0
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
    @fab = 0
    @ejercito = 0
    @fnb = 0
    @civil = 0


    @partesDoctor.each do |parte|
      @masculino = @masculino + parte.obtenerMasculino
      @femenino = @femenino + parte.obtenerFemenino
      @nuevos = @nuevos + parte.obtenerNuevos
      @repetidos = @repetidos + parte.obtenerRepetidos
      @letraA = @letraA + parte.obtenerLetraA
      @letraB = @letraB + parte.obtenerLetraB
      @letraC = @letraC + parte.obtenerLetraC
      @letraZ = @letraZ + parte.obtenerLetraZ
      @letraY = @letraY + parte.obtenerLetraY
      @letraV = @letraV + parte.obtenerLetraV
      @letraX = @letraX + parte.obtenerLetraX
      @letraH = @letraH + parte.obtenerLetraH
      @letraCAD = @letraCAD + parte.obtenerLetraCAD
      @letraE = @letraE + parte.obtenerLetraE
      @letraF = @letraF + parte.obtenerLetraF
      @letraPM = @letraPM + parte.obtenerLetraPM
      @ejercito = @ejercito + parte.obtenerEjercito
      @fab = @fab + parte.obtenerFab
      @fnb = @fnb + parte.obtenerFnb
      @civil = @civil + parte.obtenerCivil
    end

    @carga_reporte.masculino = @masculino
    @carga_reporte.femenino = @femenino
    @carga_reporte.nuevos = @nuevos
    @carga_reporte.repetidos = @repetidos
    @carga_reporte.letraA = @letraA
    @carga_reporte.letraB = @letraB
    @carga_reporte.letraC = @letraC
    @carga_reporte.letraZ = @letraZ
    @carga_reporte.letraY = @letraY
    @carga_reporte.letraV = @letraV
    @carga_reporte.letraX = @letraX
    @carga_reporte.letraH = @letraH
    @carga_reporte.letraCAD = @letraCAD
    @carga_reporte.letraE = @letraE
    @carga_reporte.letraF = @letraF
    @carga_reporte.letraPM = @letraPM
    @carga_reporte.ejercito = @ejercito
    @carga_reporte.fab = @fab
    @carga_reporte.fnb = @fnb
    @carga_reporte.civil = @civil


    @user = User.find(carga_reporte_params[:medico_id])
    @carga_reporte.medico = @user.name + " " + @user.last_name



    if @carga_reporte.save
      flash[:success] = "Medico agregado exitosamente."
      redirect_to "/carga_parte_diarios/"+@carga_reporte.carga_parte_diario.id.to_s
    else
      flash[:danger] = "Error al agregar medico"
      redirect_to carga_parte_diario_path(@carga_parte_diario)
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
      params.require(:carga_reporte).permit(:carga_parte_diario_id, :speciality_id, :area_id, :masculino, :femenino, :nuevos, :repetidos, :letraA, :letraB, :letraC, :letraZ, :letraY, :letraV, :letraX, :letraH, :letraCAD, :letraE, :letraF, :letraPM, :medico, :medico_id, :carga_horaria_contrato, :carga_horaria_cons_ext, :consultas_ofertadas, :consultas_programadas, :rendimiento_medico_hora, :horas_trabajadas, :rendimiento_medico_dia, :dias_trabajados, :rendimiento_porcentual, :productividad, :ejercito, :fab, :fnb, :civil, :total)
    end
end
