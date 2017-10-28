class ParteFisioterapiaController < ApplicationController
  before_action :set_parte_fisioterapium, only: [:show, :edit, :update, :destroy]

  # GET /parte_fisioterapia
  # GET /parte_fisioterapia.json
  def index
    if current_user.role == "Técnico-Encargado"
      @parte_fisioterapia = ParteFisioterapium.all
    else
      @parte_fisioterapia = ParteFisioterapium.where(user_id: current_user.id)
    end
  end

  # GET /parte_fisioterapia/1
  # GET /parte_fisioterapia/1.json
  def show
    if params[:name] == nil
      @pacientes = Paciente.paginate(:page => params[:page], :per_page => 5)
    else
      @pacientes = Paciente.or(nombre: /.*#{params[:name].downcase}.*/i)
                           .or(apellido: /.*#{params[:name].downcase}.*/i)
                           .or(carnet: /.*#{params[:name]}.*/i)
                           .paginate(:page => params[:page], :per_page => 5)
    end
    @pacientes.each do |paciente|
      @parte_fisioterapium.paciente_reporte_fisioterapia.each do |paciente_reporte|
        if((paciente.id == paciente_reporte.paciente_id) && (paciente_reporte.fecha_consulta.to_date == Time.now.to_date))
          @pacientes.delete paciente
        end
      end
    end
  end

  # GET /parte_fisioterapia/new
  def new
    @parte_fisioterapium = ParteFisioterapium.new
  end

  # GET /parte_fisioterapia/1/edit
  def edit
  end

  # POST /parte_fisioterapia
  # POST /parte_fisioterapia.json
  def create
    @parte_fisioterapium = ParteFisioterapium.new(parte_fisioterapium_params)

    respond_to do |format|
      if @parte_fisioterapium.save
        format.html {redirect_to @parte_fisioterapium, notice: 'Parte fisioterapia creado correctamente.'}
        format.json {render :show, status: :created, location: @parte_fisioterapium}
      else
        format.html {render :new}
        format.json {render json: @parte_fisioterapium.errors, status: :unprocessable_entity}
      end
    end
  end

  # PATCH/PUT /parte_fisioterapia/1
  # PATCH/PUT /parte_fisioterapia/1.json
  def update
    respond_to do |format|
      if @parte_fisioterapium.update(parte_fisioterapium_params)
        format.html {redirect_to @parte_fisioterapium, notice: 'Parte fisioterapia actualizado correctamente.'}
        format.json {render :show, status: :ok, location: @parte_fisioterapium}
      else
        format.html {render :edit}
        format.json {render json: @parte_fisioterapium.errors, status: :unprocessable_entity}
      end
    end
  end

  # DELETE /parte_fisioterapia/1
  # DELETE /parte_fisioterapia/1.json
  def destroy
    @parte_fisioterapium.destroy
    respond_to do |format|
      format.html {redirect_to parte_fisioterapia_url, notice: 'Parte fisioterapia eliminado correctamente.'}
      format.json {head :no_content}
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_parte_fisioterapium
    @parte_fisioterapium = ParteFisioterapium.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def parte_fisioterapium_params
    params.require(:parte_fisioterapium).permit(:turno, :mes, :anho, :user_id)
  end
end
