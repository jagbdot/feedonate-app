class RemoveFoodBankFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :food_bank, :boolean
  end
end
