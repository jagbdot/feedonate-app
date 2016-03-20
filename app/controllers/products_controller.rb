class ProductsController < ApplicationController
  def new
    @user = current_user
    @donation = @user.donations.last
    @donation_products = @donation.products.all
  end
  def create
    @user = current_user
    @donation = @user.donations.last #needs review
    @product = @donation.products.create(product_params)

      respond_to do |format|
        # if the response fomat is html, redirect as usual
        format.html { 
          flash[:notice] = "something not quite well"
          redirect_to action: 'index', controller: 'welcome'  
        }
        # if the response format is javascript, do something in app/views/products/create.js.erb
        format.js { }
      end
      flash[:notice] = "Donation created successfully"
  end

  private
  def product_params
    params.require(:product).permit(:category, :name, :amount, :date)
  end
end
