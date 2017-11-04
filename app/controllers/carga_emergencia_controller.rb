class CargaEmergenciaController < ApplicationController
  before_action :set_carga_emergencium, only: [:show, :edit, :update, :destroy, :mostrar_emergencia]

  def mostrar_emergencia
    @area = Area.find_by(nombre: 'Emergencia')
    if params[:name] == nil
      @medicos = User.where(area: @area).paginate(:page => params[:page], :per_page => 5)
    else
      @medicos = User.where(area: @area)
                     .and(
                         User.or(name: /.*#{params[:name].downcase}.*/i).or(last_name: /.*#{params[:name].downcase}.*/i).selector
                     ).paginate(:page => params[:page], :per_page => 5)
      end
    @carga_emergencium = CargaEmergencium.new
  end
  # GET /carga_emergencia
  # GET /carga_emergencia.json
  def index
    @carga_emergencia = CargaEmergencium.all

  end

  # GET /carga_emergencia/1
  # GET /carga_emergencia/1.json
  def show
    @area = Area.find_by(nombre: 'Emergencia')
    if params[:name] == nil
      @medicos = User.where(area: @area).paginate(:page => params[:page], :per_page => 5)
    else
      @medicos = User.where(area: @area)
                     .and(
                         User.or(name: /.*#{params[:name].downcase}.*/i).or(last_name: /.*#{params[:name].downcase}.*/i).selector
                     ).paginate(:page => params[:page], :per_page => 5)
      end
    end

    # GET /carga_emergencia/new
    def new
      @carga_emergencium = CargaEmergencium.new
    end

    # GET /carga_emergencia/1/edit
    def edit
    end

    # POST /carga_emergencia
    # POST /carga_emergencia.json
    def create
      @carga_emergencium = CargaEmergencium.new(carga_emergencium_params)

      respond_to do |format|
        if @carga_emergencium.save
          format.html {redirect_to @carga_emergencium, notice: 'Carga emergencia creado correctamente.'}
          format.json {render :show, status: :created, location: @carga_emergencium}
        else
          format.html {render :new}
          format.json {render json: @carga_emergencium.errors, status: :unprocessable_entity}
        end
      end
    end

    # PATCH/PUT /carga_emergencia/1
    # PATCH/PUT /carga_emergencia/1.json
    def update
      respond_to do |format|
        if @carga_emergencium.update(carga_emergencium_params)
          format.html {redirect_to @carga_emergencium, notice: 'Carga emergencia actualizado correctamente.'}
          format.json {render :show, status: :ok, location: @carga_emergencium}
        else
          format.html {render :edit}
          format.json {render json: @carga_emergencium.errors, status: :unprocessable_entity}
        end
      end
    end

    # DELETE /carga_emergencia/1
    # DELETE /carga_emergencia/1.json
    def destroy
      @carga_emergencium.destroy
      respond_to do |format|
        format.html {redirect_to carga_emergencia_url, notice: 'Carga emergencia eliminado correctamente.'}
        format.json {head :no_content}
      end
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_carga_emergencium
      @carga_emergencium = CargaEmergencium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carga_emergencium_params
      params.require(:carga_emergencium).permit(:dias_habiles, :mes, :anho)
    end
  end
