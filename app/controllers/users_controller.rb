class UsersController < ApplicationController
  before_filter only: :create

  # GET /users
  # GET /users.json
  def index
    @users = User.all
  end


  # GET /users/1
  # GET /users/1.json
  def show
    @user = User.find(params[:id])
  end

  # GET /users/new
  # GET /users/new.json
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  # POST /users.json
  def create
    @user = User.new(user_params)
    if params[:user][:password].blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end
    respond_to do |format|
      if @user.save
        format.html {redirect_to @user, notice: 'Usuario creado!.'}
      else
        format.html {render :new} ## Specify the format in which you are rendering "new" page
      end
    end
  end

  # PUT /users/1
  # PUT /users/1.json
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html {redirect_to @user, :notice => 'Usuario editado.'}
        format.json {head :ok}
      else
        format.html {render :action => "edit"}
        format.json {render :json => @user.errors, :status => :unprocessable_entity}
      end
    end
  end

  # DELETE /users/1
  # DELETE /users/1.json
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html {redirect_to users_url}
      format.json {head :ok}
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:name, :email, :last_name, :establecimiento, :localidad, :area_id, :speciality_id, :role, :clave, :password, :password_confirmation)
  end
end