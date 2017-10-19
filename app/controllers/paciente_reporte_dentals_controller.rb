class PacienteReporteDentalsController < ApplicationController
  before_action :set_paciente_reporte_dental, only: [:show, :edit, :update, :destroy]

  # GET /paciente_reporte_dentals
  # GET /paciente_reporte_dentals.json
  def index
    @paciente_reporte_dentals = PacienteReporteDental.all
  end

  # GET /paciente_reporte_dentals/1
  # GET /paciente_reporte_dentals/1.json
  def show
  end

  # GET /paciente_reporte_dentals/new
  def new
    @paciente_reporte_dental = PacienteReporteDental.new
  end

  # GET /paciente_reporte_dentals/1/edit
  def edit
  end


  # POST /paciente_reporte_dentals
  # POST /paciente_reporte_dentals.json
  def create
    @paciente_reporte_dental = PacienteReporteDental.new(paciente_reporte_dental_params)
    @parte_dental = ParteDental.find(params[:parte_dental_id])
    if @paciente_reporte_dental.save
      flash[:success] = "Paciente agregado exitosamente."
      redirect_to "/parte_dentals/"+@paciente_reporte_dental.parte_dental.id.to_s
    else
      flash[:danger] = "Error al agregar paciente"
      redirect_to parte_dental_path(@parte_dental)
    end

  end

  # PATCH/PUT /paciente_reporte_dentals/1
  # PATCH/PUT /paciente_reporte_dentals/1.json
  def update
    respond_to do |format|
      if @paciente_reporte_dental.update(paciente_reporte_dental_params)
        format.html {redirect_to @paciente_reporte_dental, notice: 'Paciente reporte dental was successfully updated.'}
        format.json {render :show, status: :ok, location: @paciente_reporte_dental}
      else
        format.html {render :edit}
        format.json {render json: @paciente_reporte_dental.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /paciente_reporte_dentals/1
  # DELETE /paciente_reporte_dentals/1.json
  def destroy
    @paciente_reporte_dental.destroy
    respond_to do |format|
      format.html {redirect_to paciente_reporte_dentals_url, notice: 'Paciente reporte dental was successfully destroyed.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_paciente_reporte_dental
    @paciente_reporte_dental = PacienteReporteDental.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def paciente_reporte_dental_params
    params.require(:paciente_reporte_dental).permit(:tipo_consulta, :edad, :paciente_id, :parte_dental_id, :tipo_asegurado, :diagnostico, :tratamiento)
  end
end
