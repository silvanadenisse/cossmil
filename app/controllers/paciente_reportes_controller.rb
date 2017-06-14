class PacienteReportesController < ApplicationController
  before_action :set_paciente_reporte, only: [:show, :edit, :update, :destroy]

  def index
    @paciente_reportes = PacienteReporte.all
  end

  def show
  end

  def new
    @paciente_reporte = PacienteReporte.new
  end


  def edit
  end

  def create
    @paciente_reporte = PacienteReporte.new(paciente_reporte_params)
    @parte_diario = ParteDiario.find(params[:parte_diario_id])
    if @paciente_reporte.save
      flash[:success] = "Paciente agregado exitosamente."
      redirect_to "/parte_diarios/"+@paciente_reporte.parte_diario.id.to_s
    else
      flash[:danger] = "Error al agregar paciente"
      redirect_to parte_diario_path(@parte_diario)
    end
  end

  def update
    respond_to do |format|
      if @paciente_reporte.update(paciente_reporte_params)
        format.html { redirect_to @paciente_reporte, notice: 'Paciente reporte was successfully updated.' }
        format.json { render :show, status: :ok, location: @paciente_reporte }
      else
        format.html { render :edit }
        format.json { render json: @paciente_reporte.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @paciente_reporte.destroy
    respond_to do |format|
      format.html { redirect_to paciente_reportes_url, notice: 'Paciente reporte was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
  def set_paciente_reporte
    @paciente_reporte = PacienteReporte.find(params[:id])
  end

  def paciente_reporte_params
    params.require(:paciente_reporte).permit(:paciente_id, :diagnostico, :parte_diario_id)
  end
end
