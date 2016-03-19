class DonationsController < ApplicationController

  def new
    @user = current_user
    @donation = @user.donations.new
  end
  def create
    @user = current_user
    @donation = @user.donations.new(donation_params)
    @product = @donation.products.new(product_params)

    if @donation.save
      @product.save
      flash[:notice] = "donation created successfully"
      redirect_to action: 'index', controller: 'welcome' 
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
