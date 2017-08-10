class CargaDentalsController < ApplicationController
  before_action :set_carga_dental, only: [:show, :edit, :update, :destroy]

  # GET /carga_dentals
  # GET /carga_dentals.json
  def index
    @carga_dentals = CargaDental.all
  end

  # GET /carga_dentals/1
  # GET /carga_dentals/1.json
  def show
    @user = User.all
  end

  # GET /carga_dentals/new
  def new
    @carga_dental = CargaDental.new
  end

  # GET /carga_dentals/1/edit
  def edit
  end

  # POST /carga_dentals
  # POST /carga_dentals.json
  def create
    @carga_dental = CargaDental.new(carga_dental_params)

    respond_to do |format|
      if @carga_dental.save
        format.html { redirect_to @carga_dental, notice: 'Carga dental was successfully created.' }
        format.json { render :show, status: :created, location: @carga_dental }
      else
        format.html { render :new }
        format.json { render json: @carga_dental.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carga_dentals/1
  # PATCH/PUT /carga_dentals/1.json
  def update
    respond_to do |format|
      if @carga_dental.update(carga_dental_params)
        format.html { redirect_to @carga_dental, notice: 'Carga dental was successfully updated.' }
        format.json { render :show, status: :ok, location: @carga_dental }
      else
        format.html { render :edit }
        format.json { render json: @carga_dental.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carga_dentals/1
  # DELETE /carga_dentals/1.json
  def destroy
    @carga_dental.destroy
    respond_to do |format|
      format.html { redirect_to carga_dentals_url, notice: 'Carga dental was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_carga_dental
      @carga_dental = CargaDental.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def carga_dental_params
      params.require(:carga_dental).permit(:user_id, :mes, :dias_habiles)
    end
end
