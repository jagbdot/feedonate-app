class AddDonorAndBankToUsers < ActiveRecord::Migration
  def change
    add_column :users, :donor, :string
    add_column :users, :bank, :string
  end
end
