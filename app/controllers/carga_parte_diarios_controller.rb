class CargaParteDiariosController < ApplicationController
  before_action :set_carga_parte_diario, only: [:show, :edit, :update, :destroy]

  # GET /carga_parte_diarios
  # GET /carga_parte_diarios.json
  def index
    @carga_parte_diarios = CargaParteDiario.all
  end

  # GET /carga_parte_diarios/1
  # GET /carga_parte_diarios/1.json
  def show
    @medicos = User.where(role: 'Doctor').where(area: 'Consulta Externa')
  end

  # GET /carga_parte_diarios/new
  def new
    @carga_parte_diario = CargaParteDiario.new
  end

  # GET /carga_parte_diarios/1/edit
  def edit
  end

  # POST /carga_parte_diarios
  # POST /carga_parte_diarios.json
  def create
    @carga_parte_diario = CargaParteDiario.new(carga_parte_diario_params)

    respond_to do |format|
      if @carga_parte_diario.save
        format.html { redirect_to @carga_parte_diario, notice: 'Carga parte diario was successfully created.' }
        format.json { render :show, status: :created, location: @carga_parte_diario }
      else
        format.html { render :new }
        format.json { render json: @carga_parte_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carga_parte_diarios/1
  # PATCH/PUT /carga_parte_diarios/1.json
  def update
    respond_to do |format|
      if @carga_parte_diario.update(carga_parte_diario_params)
        format.html { redirect_to @carga_parte_diario, notice: 'Carga parte diario was successfully updated.' }
        format.json { render :show, status: :ok, location: @carga_parte_diario }
      else
        format.html { render :edit }
        format.json { render json: @carga_parte_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carga_parte_diarios/1
  # DELETE /carga_parte_diarios/1.json
  def destroy
    @carga_parte_diario.destroy
    respond_to do |format|
      format.html { redirect_to carga_parte_diarios_url, notice: 'Carga parte diario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carga_parte_diario
      @carga_parte_diario = CargaParteDiario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carga_parte_diario_params
      params.require(:carga_parte_diario).permit(:dias_habiles, :mes, :anho)
    end
end
