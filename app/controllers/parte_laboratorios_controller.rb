class ParteLaboratoriosController < ApplicationController
  before_action :set_parte_laboratorio, only: [:show, :edit, :update, :destroy]

  # GET /parte_laboratorios
  # GET /parte_laboratorios.json
  def index
    #@parte_laboratorios = ParteLaboratorio.all
    @parte_laboratorios = ParteLaboratorio.where(user_id: current_user.id)
  end

  # GET /parte_laboratorios/1
  # GET /parte_laboratorios/1.json
  def show
    if params[:name] == nil
      @pacientes = Paciente.paginate(:page => params[:page], :per_page => 5)
    else
      @pacientes = Paciente.or(nombre: /.*#{params[:name].downcase}.*/i).or(apellido: /.*#{params[:name].downcase}.*/i).paginate(:page => params[:page], :per_page => 5)
    end
  end

  # GET /parte_laboratorios/new
  def new
    @parte_laboratorio = ParteLaboratorio.new
  end

  # GET /parte_laboratorios/1/edit
  def edit
  end

  # POST /parte_laboratorios
  # POST /parte_laboratorios.json
  def create
    @parte_laboratorio = ParteLaboratorio.new(parte_laboratorio_params)

    respond_to do |format|
      if @parte_laboratorio.save
        format.html { redirect_to @parte_laboratorio, notice: 'Parte laboratorio was successfully created.' }
        format.json { render :show, status: :created, location: @parte_laboratorio }
      else
        format.html { render :new }
        format.json { render json: @parte_laboratorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /parte_laboratorios/1
  # PATCH/PUT /parte_laboratorios/1.json
  def update
    respond_to do |format|
      if @parte_laboratorio.update(parte_laboratorio_params)
        format.html { redirect_to @parte_laboratorio, notice: 'Parte laboratorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @parte_laboratorio }
      else
        format.html { render :edit }
        format.json { render json: @parte_laboratorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /parte_laboratorios/1
  # DELETE /parte_laboratorios/1.json
  def destroy
    @parte_laboratorio.destroy
    respond_to do |format|
      format.html { redirect_to parte_laboratorios_url, notice: 'Parte laboratorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_parte_laboratorio
      @parte_laboratorio = ParteLaboratorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def parte_laboratorio_params
      params.require(:parte_laboratorio).permit(:mes, :user_id)
    end
end
