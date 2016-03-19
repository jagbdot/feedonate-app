class ProductsController < ApplicationController
  def new
    @user = current_user
    @donation = @user.donations.last
    @donation_products = @donation.products.all
  end
  def create
    @user = current_user
    @donation = @user.donations.last #needs review
    @product = @donation.products.new(product_params)

    if @product.save
      flash[:notice] = "Donation created succesfully."
      redirect_to action: 'index', controller: 'welcome' 
    else
      flash[:alert] = "You need to fill the camps"
      render 'new'
    end
  end

  private
  def product_params
    params.require(:product).permit(:category, :name, :amount, :date)
  end
end
