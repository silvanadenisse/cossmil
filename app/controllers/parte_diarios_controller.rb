class ParteDiariosController < ApplicationController
  before_action :set_parte_diario, only: [:show, :edit, :update, :destroy]

  def index
    #@parte_diarios = ParteDiario.all
    @parte_diarios = ParteDiario.where(user_id: current_user.id)
  end

  def show
    # @pacientes = Paciente.all
    @pacientes = Paciente.paginate(:page => params[:page], :per_page => 5)
  end


  def new
    @parte_diario = ParteDiario.new
  end


  def edit
  end

  def search_paciente
    puts("=================")
    puts(params)
    @pacientes = Paciente.where("nombre like ?", "%#{params[:name]}%").paginate(:per_page => 5, :page => params[:page])
    # render 'show'
  end


  def create
    @parte_diario = ParteDiario.new(parte_diario_params)
    respond_to do |format|
      if @parte_diario.save
        format.html { redirect_to @parte_diario, notice: 'Parte diario creado correctamente.' }
        format.json { render :show, status: :created, location: @parte_diario }
      else
        format.html { render :new }
        format.json { render json: @parte_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @parte_diario.update(parte_diario_params)
        format.html { redirect_to @parte_diario, notice: 'Parte diario actualizado correctamente' }
        format.json { render :show, status: :ok, location: @parte_diario }
      else
        format.html { render :edit }
        format.json { render json: @parte_diario.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @parte_diario.destroy
    respond_to do |format|
      format.html { redirect_to parte_diarios_url, notice: 'Parte diario eliminado correctamente.' }
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
      params.require(:parte_diario).permit(:establecimiento, :localidad, :mes, :especialidad, :servicio_de, :user_id, :clave, :inicio_consulta, :fin_consulta, :enfermera)
    end
end
