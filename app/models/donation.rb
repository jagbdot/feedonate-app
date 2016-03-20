class Donation < ActiveRecord::Base
  default_scope { order('created_at DESC') }
  belongs_to :user
  has_many :products

  def self.last_created_donations(n)
    Donation.order(id = 1).first(n) 
  end

  def self.get_winner_donation
    Donation.first
  end
end
