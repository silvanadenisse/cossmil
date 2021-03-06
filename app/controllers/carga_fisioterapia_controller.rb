class CargaFisioterapiaController < ApplicationController
  before_action :set_carga_fisioterapium, only: [:show, :edit, :update, :destroy, :mostrar_fisioterapia]

  def mostrar_fisioterapia
    @area = Area.find_by(nombre: 'Fisioterapia')
    if params[:name] == nil
      @medicos = User.where(area: @area).paginate(:page => params[:page], :per_page => 5)
    else
      @medicos = User.where(area: @area)
                     .and(
                         User.or(name: /.*#{params[:name].downcase}.*/i).or(last_name: /.*#{params[:name].downcase}.*/i).selector
                     ).paginate(:page => params[:page], :per_page => 5)
    end
    @carga_fisioterapia = CargaFisioterapium.all
  end
  # GET /carga_fisioterapia
  # GET /carga_fisioterapia.json
  def index
    @carga_fisioterapia = CargaFisioterapium.all
  end

  # GET /carga_fisioterapia/1
  # GET /carga_fisioterapia/1.json
  def show
    @area = Area.find_by(nombre: 'Fisioterapia')
    if params[:name] == nil
      @medicos = User.where(area: @area).paginate(:page => params[:page], :per_page => 5)
    else
      @medicos = User.where(area: @area)
                     .and(
                         User.or(name: /.*#{params[:name].downcase}.*/i).or(last_name: /.*#{params[:name].downcase}.*/i).selector
                     ).paginate(:page => params[:page], :per_page => 5)
    end
  end

  def print
    @carga_fisioterapium = CargaFisioterapium.find(params[:id])
    render layout: false
  end

  # GET /carga_fisioterapia/new
  def new
    @carga_fisioterapium = CargaFisioterapium.new
  end

  # GET /carga_fisioterapia/1/edit
  def edit
  end

  # POST /carga_fisioterapia
  # POST /carga_fisioterapia.json
  def create
    @carga_fisioterapium = CargaFisioterapium.new(carga_fisioterapium_params)

    respond_to do |format|
      if @carga_fisioterapium.save
        format.html {redirect_to @carga_fisioterapium, notice: 'Carga fisioterapia creado correctamente.'}
        format.json {render :show, status: :created, location: @carga_fisioterapium}
      else
        format.html {render :new}
        format.json {render json: @carga_fisioterapium.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /carga_fisioterapia/1
  # PATCH/PUT /carga_fisioterapia/1.json
  def update
    respond_to do |format|
      if @carga_fisioterapium.update(carga_fisioterapium_params)
        format.html {redirect_to @carga_fisioterapium, notice: 'Carga fisioterapia actualizado correctamente.'}
        format.json {render :show, status: :ok, location: @carga_fisioterapium}
      else
        format.html {render :edit}
        format.json {render json: @carga_fisioterapium.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /carga_fisioterapia/1
  # DELETE /carga_fisioterapia/1.json
  def destroy
    @carga_fisioterapium.destroy
    respond_to do |format|
      format.html {redirect_to carga_fisioterapia_url, notice: 'Carga fisioterapia eliminado correctamente.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_carga_fisioterapium
    @carga_fisioterapium = CargaFisioterapium.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def carga_fisioterapium_params
    params.require(:carga_fisioterapium).permit(:dias_habiles, :mes, :anho)
  end
end
