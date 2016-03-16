class RemoveDonorAndBankFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :donor, :string
    remove_column :users, :bank, :string
  end
end
