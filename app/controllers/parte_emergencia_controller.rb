class ParteEmergenciaController < ApplicationController
  before_action :set_parte_emergencium, only: [:show, :edit, :update, :destroy]

  # GET /parte_emergencia
  # GET /parte_emergencia.json
  def index
    #@parte_emergencia = ParteEmergencium.all
    @parte_emergencia = ParteEmergencium.where(user_id: current_user.id)
  end

  # GET /parte_emergencia/1
  # GET /parte_emergencia/1.json
  def show
    if params[:name] == nil
      @pacientes = Paciente.paginate(:page => params[:page], :per_page => 5)
    else
      @pacientes = Paciente.or(nombre: /.*#{params[:name].downcase}.*/i).or(apellido: /.*#{params[:name].downcase}.*/i).paginate(:page => params[:page], :per_page => 5)
    end
  end

  # GET /parte_emergencia/new
  def new
    @parte_emergencium = ParteEmergencium.new
  end

  # GET /parte_emergencia/1/edit
  def edit
  end

  # POST /parte_emergencia
  # POST /parte_emergencia.json
  def create
    @parte_emergencium = ParteEmergencium.new(parte_emergencium_params)

    respond_to do |format|
      if @parte_emergencium.save
        format.html { redirect_to @parte_emergencium, notice: 'Parte emergencia creado correctamente.' }
        format.json { render :show, status: :created, location: @parte_emergencium }
      else
        format.html { render :new }
        format.json { render json: @parte_emergencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parte_emergencia/1
  # PATCH/PUT /parte_emergencia/1.json
  def update
    respond_to do |format|
      if @parte_emergencium.update(parte_emergencium_params)
        format.html { redirect_to @parte_emergencium, notice: 'Parte emergencium actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @parte_emergencium }
      else
        format.html { render :edit }
        format.json { render json: @parte_emergencium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parte_emergencia/1
  # DELETE /parte_emergencia/1.json
  def destroy
    @parte_emergencium.destroy
    respond_to do |format|
      format.html { redirect_to parte_emergencia_url, notice: 'Parte emergencium eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parte_emergencium
      @parte_emergencium = ParteEmergencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parte_emergencium_params
      params.require(:parte_emergencium).permit(:mes, :user_id, :enfermera)
    end
end
