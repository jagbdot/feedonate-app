class WelcomeController < ApplicationController

  def index
    @donations = Donation.last_created_donations(3)
    if @donations.empty?
      render template: 'welcome/no_donations'
    end
    #///////////
     @winner_user = User.get_winner_user     
     @last_winner_users = User.get_last_winner_users
    # @winner_user_donations = @winner_user.donations.length
    # @winner_user_products = @winner_user.get_user_products
    # @winner_user_donations_porcentage = @winner_user.donations.length * 100 / Donation.all.length
  end

end
