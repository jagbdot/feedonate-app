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
      flash[:notice] = "Well done! Now you have to add the products."
      redirect_to action: 'new', controller: 'products' 
    else
      flash[:alert] = "You need to fill the camps"
      render 'new'
    end
  end
  def show
    @donation = Donation.find(params[:id]) || render_404(params) 
    @products = @donation.products
  end

  private
  def donation_params
    params.require(:donation).permit(:date, :description)
  end
  def product_params
    params.require(:product).permit(:category, :name, :amount, :date)
  end
end
