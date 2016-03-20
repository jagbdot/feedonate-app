class Donation < ActiveRecord::Base
  belongs_to :user
  has_many :products

  def self.last_created_donations(n)
    Donation.order(id = 1).last(n) 
  end

  def self.get_winner_donation
    Donation.first
  end
end
