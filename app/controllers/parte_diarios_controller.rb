class ParteDiariosController < ApplicationController
  before_action :set_parte_diario, only: [:show, :edit, :update, :destroy]

  # GET /parte_diarios
  # GET /parte_diarios.json
  def index
    @parte_diarios = ParteDiario.all
  end

  # GET /parte_diarios/1
  # GET /parte_diarios/1.json
  def show
  end

  # GET /parte_diarios/new
  def new
    @parte_diario = ParteDiario.new
  end

  # GET /parte_diarios/1/edit
  def edit
  end

  # POST /parte_diarios
  # POST /parte_diarios.json
  def create
    @parte_diario = ParteDiario.new(parte_diario_params)

    respond_to do |format|
      if @parte_diario.save
        format.html { redirect_to @parte_diario, notice: 'Parte diario was successfully created.' }
        format.json { render :show, status: :created, location: @parte_diario }
      else
        format.html { render :new }
        format.json { render json: @parte_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parte_diarios/1
  # PATCH/PUT /parte_diarios/1.json
  def update
    respond_to do |format|
      if @parte_diario.update(parte_diario_params)
        format.html { redirect_to @parte_diario, notice: 'Parte diario was successfully updated.' }
        format.json { render :show, status: :ok, location: @parte_diario }
      else
        format.html { render :edit }
        format.json { render json: @parte_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parte_diarios/1
  # DELETE /parte_diarios/1.json
  def destroy
    @parte_diario.destroy
    respond_to do |format|
      format.html { redirect_to parte_diarios_url, notice: 'Parte diario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parte_diario
      @parte_diario = ParteDiario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parte_diario_params
      params.require(:parte_diario).permit(:mes, :servicio_de, :nombre_medico, :clave, :inicio_consulta, :fin_consulta, :enfermera)
    end
end
