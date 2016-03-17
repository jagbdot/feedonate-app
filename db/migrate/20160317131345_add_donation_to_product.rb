class AddDonationToProduct < ActiveRecord::Migration
  def change
    add_reference :products, :donation, index: true, foreign_key: true
  end
end
