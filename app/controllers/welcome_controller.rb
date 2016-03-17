class WelcomeController < ApplicationController
  def index
    @donations = Donation.last_created_donations(3)
    if @donations.empty?
      render template: 'welcome/no_donations'
    end
  end
end
