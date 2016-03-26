class AddBankIdAndDonorIdToDonations < ActiveRecord::Migration
  def change
    add_reference :donations, :bank, index: true
    add_reference :donations, :donor, index: true
  end
end


