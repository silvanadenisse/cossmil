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



    @letraA = 0

    @partesDoctor.each do |parte|
      @masculinoN = @masculinoN + parte.obtenerMasculinoN
      @masculinoR = @masculinoR + parte.obtenerMasculinoR


      @letraA = @letraA + parte.obtenerLetraA
    end

    @carga_reporte_dental.masculinoN = @masculinoN
    @carga_reporte_dental[:masculinoR]= @masculinoR
    @carga_reporte_dental[:letraA] = @letraA



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
      params.require(:carga_reporte_dental).permit(:carga_dental_id, :masculinoR, :masculinoN, :medico_id, :observaciones, :horas_trabajadas, :consulta_hora, :hrs_trabajadas, :pacientes_dias, :dias_trabajados, :consultas_programadas, :total)
    end
end
