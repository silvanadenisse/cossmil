class ParteServiciocomplementariosController < ApplicationController
  before_action :set_parte_serviciocomplementario, only: [:show, :edit, :update, :destroy]

  # GET /parte_serviciocomplementarios
  # GET /parte_serviciocomplementarios.json
  def index
    @parte_serviciocomplementarios = ParteServiciocomplementario.all
  end

  # GET /parte_serviciocomplementarios/1
  # GET /parte_serviciocomplementarios/1.json
  def show
  end

  # GET /parte_serviciocomplementarios/new
  def new
    @parte_serviciocomplementario = ParteServiciocomplementario.new
  end

  # GET /parte_serviciocomplementarios/1/edit
  def edit
  end

  # POST /parte_serviciocomplementarios
  # POST /parte_serviciocomplementarios.json
  def create
    @parte_serviciocomplementario = ParteServiciocomplementario.new(parte_serviciocomplementario_params)

    respond_to do |format|
      if @parte_serviciocomplementario.save
        format.html { redirect_to @parte_serviciocomplementario, notice: 'Parte servicio complementario creado correctamente.' }
        format.json { render :show, status: :created, location: @parte_serviciocomplementario }
      else
        format.html { render :new }
        format.json { render json: @parte_serviciocomplementario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parte_serviciocomplementarios/1
  # PATCH/PUT /parte_serviciocomplementarios/1.json
  def update
    respond_to do |format|
      if @parte_serviciocomplementario.update(parte_serviciocomplementario_params)
        format.html { redirect_to @parte_serviciocomplementario, notice: 'Parte servicio complementario actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @parte_serviciocomplementario }
      else
        format.html { render :edit }
        format.json { render json: @parte_serviciocomplementario.errors, status: :unprocessable_entity }
      end
    end
  end
 
  # DELETE /parte_serviciocomplementarios/1
  # DELETE /parte_serviciocomplementarios/1.json
  def destroy
    @parte_serviciocomplementario.destroy
    respond_to do |format|
      format.html { redirect_to parte_serviciocomplementarios_url, notice: 'Parte servicio complementario eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parte_serviciocomplementario
      @parte_serviciocomplementario = ParteServiciocomplementario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parte_serviciocomplementario_params
      params.require(:parte_serviciocomplementario).permit(:mes)
    end
end
