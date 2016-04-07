class DonationsController < ApplicationController
  
  def index
    # if the id params is present
    if params[:id]
      # get all records with id less than 'our last id'
      # and limit the results to 5
      @donations = Donation.where('id < ?', params[:id]).limit(6)
    else
      @donations = Donation.limit(9)
    end
    respond_to do |format|
      format.html
      format.js { }
    end 
  end

  def new
    @user = current_user
    @donation = @user.donor_donations.new
  end
  def create
    @user = current_user
    @donation = @user.donor_donations.new(donation_params)

    if @donation.save
      flash[:notice] = "Muy bien! Ahora debes agregar alimentos."
      redirect_to action: 'new', controller: 'products' 
    else
      flash[:alert] = "You need to fill the camps"
      render 'new'
    end

  end
  def show
    @donation = Donation.find(params[:id]) || render_404(params) 
    @products = @donation.products
    @donation_bank_id = @donation.bank_id
    @donation_donor_id = @donation.donor_id
  end

  def update

    if params[:donation_id]
      @donation = Donation.find(params[:donation_id]) || render_404(params) 

      @donation.update_attributes({ :bank_id => nil })

      redirect_to donors_put_path(@donation), notice: 'Solicitud eliminada'

    else
      @donation = Donation.find(params[:id]) || render_404(params) 
      @user = current_user.id
      @nil = nil

      @donation.update_attributes({ :bank_id => @user })

        respond_to do |format|
          format.js { }
          format.html { redirect_to root_path, notice: 'no' }
      end      
    end
  end

  def destroy
    @donation = Donation.find(params[:id]) || render_404(params) 
    @donation.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Donación eliminada exitosamente' }
    end   
  end

  private
  def donation_params
    params.require(:donation).permit(:date, :description)
  end
  def product_params
    params.require(:product).permit(:category, :name, :amount, :date)
  end
end
