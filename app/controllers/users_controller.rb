class UsersController < ApplicationController
before_action :authenticate_user!, :except => [:get_form_sign_in, :get_form_sign_up] #todas las acciones de controlador de usuario solo son accesibles para 
  # GET /users

  def number_donations
    if user_signed_in?
      @notifications = current_user.get_notifications_number
    end
  end

  def index
    @users = User.all
  end

  def banks
    @banks = User.where(type_of_user: 'bank')
  end

  def donors
    @donors = User.where(type_of_user: 'donor')
  end

  def get_form_sign_in
    render 'form-signin'
  end

  def get_form_sign_up
    render 'form-signup'
  end

  # GET /users/1
  def show
    @user = User.find_by(id: params[:id])
  end

  def profile
    @user = current_user
    @donor_donation = @user.donor_donations
    @bank_donation = @user.bank_donations
    render 'users/profile'
  end

  # GET /users/new
  def new
    @user = User.new
  end

  # GET /users/1/edit
  def edit
    @user = User.find(params[:id])
  end

  # POST /users
  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to @user, notice: 'Usuario creado exitosamente.' }
      else
        format.html { render :new, notice: 'Algo fue mal...' }
      end
    end
  end

  # PATCH/PUT /users/1
  def update
    @user = User.find(params[:id])
    respond_to do |format|
      if @user.update(user_params)
        format.html { redirect_to @user, notice: 'Usuario editado exitosamente.' }
      else
        format.html { render :edit }
      end
    end
  end

  # DELETE /users/1
  def destroy
    @user = User.find(params[:id])
    @user.destroy
    respond_to do |format|
      format.html { redirect_to users_url, notice: 'Usuario eliminado exitosamente.' }
    end
  end

  private
  
    # Never trust parameters from the scary internet, only allow the white list through.
    def user_params
      params.require(:user).permit(:name, :email, :city, :phone, :address, :type_of_user)
    end
end
