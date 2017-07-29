class ParteRayosXesController < ApplicationController
  before_action :set_parte_rayos_x, only: [:show, :edit, :update, :destroy]

  # GET /parte_rayos_xes
  # GET /parte_rayos_xes.json
  def index
    @parte_rayos_xes = ParteRayosX.all
  end

  # GET /parte_rayos_xes/1
  # GET /parte_rayos_xes/1.json
  def show
    @pacientes = Paciente.all
  end

  # GET /parte_rayos_xes/new
  def new
    @parte_rayos_x = ParteRayosX.new
  end

  # GET /parte_rayos_xes/1/edit
  def edit
  end

  # POST /parte_rayos_xes
  # POST /parte_rayos_xes.json
  def create
    @parte_rayos_x = ParteRayosX.new(parte_rayos_x_params)

    respond_to do |format|
      if @parte_rayos_x.save
        format.html { redirect_to @parte_rayos_x, notice: 'Parte rayos x was successfully created.' }
        format.json { render :show, status: :created, location: @parte_rayos_x }
      else
        format.html { render :new }
        format.json { render json: @parte_rayos_x.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parte_rayos_xes/1
  # PATCH/PUT /parte_rayos_xes/1.json
  def update
    respond_to do |format|
      if @parte_rayos_x.update(parte_rayos_x_params)
        format.html { redirect_to @parte_rayos_x, notice: 'Parte rayos x was successfully updated.' }
        format.json { render :show, status: :ok, location: @parte_rayos_x }
      else
        format.html { render :edit }
        format.json { render json: @parte_rayos_x.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parte_rayos_xes/1
  # DELETE /parte_rayos_xes/1.json
  def destroy
    @parte_rayos_x.destroy
    respond_to do |format|
      format.html { redirect_to parte_rayos_xes_url, notice: 'Parte rayos x was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parte_rayos_x
      @parte_rayos_x = ParteRayosX.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parte_rayos_x_params
      params.require(:parte_rayos_x).permit(:user_id, :mes)
    end
end
