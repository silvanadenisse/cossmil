class ParteDentalsController < ApplicationController
  before_action :set_parte_dental, only: [:show, :edit, :update, :destroy]

  # GET /parte_dentals
  # GET /parte_dentals.json
  def index
    @parte_dentals = ParteDental.all
  end

  # GET /parte_dentals/1
  # GET /parte_dentals/1.json
  def show
    @pacientes = Paciente.all
  end

  # GET /parte_dentals/new
  def new
    @parte_dental = ParteDental.new
  end

  # GET /parte_dentals/1/edit
  def edit
  end

  # POST /parte_dentals
  # POST /parte_dentals.json
  def create
    @parte_dental = ParteDental.new(parte_dental_params)
    respond_to do |format|
      if @parte_dental.save
        format.html { redirect_to @parte_dental, notice: 'Parte dental was successfully created.' }
        format.json { render :show, status: :created, location: @parte_dental }
      else
        format.html { render :new }
        format.json { render json: @parte_dental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parte_dentals/1
  # PATCH/PUT /parte_dentals/1.json
  def update
    respond_to do |format|
      if @parte_dental.update(parte_dental_params)
        format.html { redirect_to @parte_dental, notice: 'Parte dental was successfully updated.' }
        format.json { render :show, status: :ok, location: @parte_dental }
      else
        format.html { render :edit }
        format.json { render json: @parte_dental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parte_dentals/1
  # DELETE /parte_dentals/1.json
  def destroy
    @parte_dental.destroy
    respond_to do |format|
      format.html { redirect_to parte_dentals_url, notice: 'Parte dental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parte_dental
      @parte_dental = ParteDental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parte_dental_params
      params.require(:parte_dental).permit(:mes, :user_id, :clave, :inicio_consulta, :fin_consulta, :enfermera)
    end
end
