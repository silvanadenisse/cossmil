class CargaReporteDentalsController < ApplicationController
  before_action :set_carga_reporte_dental, only: [:show, :edit, :update, :destroy]

  # GET /carga_reporte_dentals
  # GET /carga_reporte_dentals.json
  def index
    @carga_reporte_dentals = CargaReporteDental.all
  end

  # GET /carga_reporte_dentals/1
  # GET /carga_reporte_dentals/1.json
  def show
  end

  # GET /carga_reporte_dentals/new
  def new
    @carga_reporte_dental = CargaReporteDental.new
  end

  # GET /carga_reporte_dentals/1/edit
  def edit
  end

  # POST /carga_reporte_dentals
  # POST /carga_reporte_dentals.json
  def create
    @carga_reporte_dental = CargaReporteDental.new(carga_reporte_dental_params)
    @partesDoctor = ParteDental.where(user_id: carga_reporte_dental_params[:medico_id])
  
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



    puts("==================")
      puts(@carga_reporte_dental.inspect)
      puts("==================")


    puts("==============================")
    puts("Primera")
    puts(@carga_reporte_dental[:masculinoN])
    puts("Repetida")
    puts(@carga_reporte_dental[:masculinoR])
    puts("==============================")
    # @femeninoN = 0
    # @femaninoR = 0

    # @partesDoctor.each do |parte|
    #   @femaninoN = @femaninoN+parte.obtenerFemeninoN
    #   @femaninoR = @femaninoR + parte.obtenerFemeninoR
    # end

    # @carga_reporte_dental.femeninoR =@femeninoR
    # @carga_reporte_dental.femeninoN =@femeninoN

    # @pcarga_dental = CargaDental.find(params[:carga_dental_id])
    @user = User.find(carga_reporte_dental_params[:medico_id])
    @carga_reporte_dental.medico = @user.name + " " + @user.last_name

      if @carga_reporte_dental.save
      flash[:success] = "Medico agregado exitosamente."
      redirect_to "/carga_dentals/"+@carga_reporte_dental.carga_dental.id.to_s
    else
      flash[:danger] = "Error al agregar medico"
      redirect_to carga_dental_path(@carga_dental)
    end
  end

  # PATCH/PUT /carga_reporte_dentals/1
  # PATCH/PUT /carga_reporte_dentals/1.json
  def update
    respond_to do |format|
      if @carga_reporte_dental.update(carga_reporte_dental_params)
        format.html { redirect_to @carga_reporte_dental, notice: 'Carga reporte dental was successfully updated.' }
        format.json { render :show, status: :ok, location: @carga_reporte_dental }
      else
        format.html { render :edit }
        format.json { render json: @carga_reporte_dental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carga_reporte_dentals/1
  # DELETE /carga_reporte_dentals/1.json
  def destroy
    @carga_reporte_dental.destroy
    respond_to do |format|
      format.html { redirect_to carga_reporte_dentals_url, notice: 'Carga reporte dental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carga_reporte_dental
      @carga_reporte_dental = CargaReporteDental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carga_reporte_dental_params
      params.require(:carga_reporte_dental).permit(:carga_dental_id, :masculinoR, :masculinoN, :femeninoN, :femeninoR, :letraA, :letraB, :letraC, :letraZ, :letraY, :letraV, :letraX, :letraH, :letraCAD, :letraE, :letraF, :letraPM, :medico, :medico_id, :observaciones, :horas_trabajadas, :consulta_hora, :hrs_trabajadas, :pacientes_dias, :dias_trabajados, :consultas_programadas, :total)
    end
end
