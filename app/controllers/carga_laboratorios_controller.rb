class CargaLaboratoriosController < ApplicationController
  before_action :set_carga_laboratorio, only: [:show, :edit, :update, :destroy]

  # GET /carga_laboratorios
  # GET /carga_laboratorios.json
  def index
    @carga_laboratorios = CargaLaboratorio.all
  end

  # GET /carga_laboratorios/1
  # GET /carga_laboratorios/1.json
  def show
    @areas = Area.all
    @specialities = Speciality.paginate(:page => params[:page], :per_page => 5)
  end

  # GET /carga_laboratorios/new
  def new
    @carga_laboratorio = CargaLaboratorio.new
  end

  # GET /carga_laboratorios/1/edit
  def edit
  end

  # POST /carga_laboratorios
  # POST /carga_laboratorios.json
  def create
    @carga_laboratorio = CargaLaboratorio.new(carga_laboratorio_params)

    respond_to do |format|
      if @carga_laboratorio.save
        format.html { redirect_to @carga_laboratorio, notice: 'Carga laboratorio creado correctamente.' }
        format.json { render :show, status: :created, location: @carga_laboratorio }
      else
        format.html { render :new }
        format.json { render json: @carga_laboratorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carga_laboratorios/1
  # PATCH/PUT /carga_laboratorios/1.json
  def update
    respond_to do |format|
      if @carga_laboratorio.update(carga_laboratorio_params)
        format.html { redirect_to @carga_laboratorio, notice: 'Carga laboratorio actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @carga_laboratorio }
      else
        format.html { render :edit }
        format.json { render json: @carga_laboratorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carga_laboratorios/1
  # DELETE /carga_laboratorios/1.json
  def destroy
    @carga_laboratorio.destroy
    respond_to do |format|
      format.html { redirect_to carga_laboratorios_url, notice: 'Carga laboratorio eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carga_laboratorio
      @carga_laboratorio = CargaLaboratorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carga_laboratorio_params
      params.require(:carga_laboratorio).permit(:mes, :anho)
    end
end
