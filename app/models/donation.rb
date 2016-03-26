class Donation < ActiveRecord::Base
  default_scope { order('created_at DESC') }
  belongs_to :bank, class_name: "User", foreign_key: "bank_id"
  belongs_to :donor, class_name: "User", foreign_key: "donor_id"
  has_many :products

  def user
    User.where("bank_id = ? OR donor_id = ?", self.id, self.id)
  end

  def self.last_created_donations(n)
    Donation.order(id = 1).first(n) 
  end

  def self.get_winner_donation
    Donation.first
  end
end
