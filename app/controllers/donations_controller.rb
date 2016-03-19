class DonationsController < ApplicationController

  def new
    @user = current_user
    @donation = @user.donations.new
  end
  def create
    @user = current_user
    @donation = @user.donations.new(donation_params)

    if @donation.save
      flash[:notice] = "Now you have to add the products."
      redirect_to action: 'new', controller: 'products' 
    else
      flash[:alert] = "You need to fill the camps"
      render 'new'
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
