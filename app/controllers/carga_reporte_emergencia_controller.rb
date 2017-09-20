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
    @partesDoctor = ParteEmergencium.where(user_id: carga_reporte_emergencium_params[:medico_id])
     
    @masculinoN = 0
    @masculinoR = 0
    @femeninoN = 0
    @femeninoR = 0
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


    @partesDoctor.each do |parte|
      @masculinoN = @masculinoN + parte.obtenerMasculinoN
      @masculinoR = @masculinoR + parte.obtenerMasculinoR
      @femeninoN = @femeninoN + parte.obtenerFemeninoN
      @femeninoR = @femeninoR + parte.obtenerFemeninoR
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

    end

    @carga_reporte_dental.masculinoN = @masculinoN
    @carga_reporte_dental.masculinoR = @masculinoR
    @carga_reporte_dental.femeninoN = @femeninoN
    @carga_reporte_dental.femeninoR = @femeninoR
    @carga_reporte_dental.letraA = @letraA
    @carga_reporte_dental.letraB = @letraB
    @carga_reporte_dental.letraC = @letraC
    @carga_reporte_dental.letraZ = @letraZ
    @carga_reporte_dental.letraY = @letraY
    @carga_reporte_dental.letraV = @letraV
    @carga_reporte_dental.letraX = @letraX
    @carga_reporte_dental.letraH = @letraH
    @carga_reporte_dental.letraCAD = @letraCAD
    @carga_reporte_dental.letraE = @letraE
    @carga_reporte_dental.letraF = @letraF
    @carga_reporte_dental.letraPM = @letraPM



    @user = User.find(carga_reporte_emergencium_params[:medico_id])
    @carga_reporte_emergencium.medico = @user.name + " " + @user.last_name




     
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
      params.require(:carga_reporte_emergencium).permit(:carga_emergencium_id, :masculinoR, :masculinoN, :femeninoN, :femeninoR, :letraA, :letraB, :letraC, :letraZ, :letraY, :letraV, :letraX, :letraH, :letraCAD, :letraE, :letraF, :letraPM, :medico, :medico_id, :consulta_hora, :horas_trabajadas, :pacientes_dias, :dias_trabajados, :total)
    end
end
