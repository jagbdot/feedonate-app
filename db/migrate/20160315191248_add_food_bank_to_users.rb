class AddFoodBankToUsers < ActiveRecord::Migration
  def change
    add_column :users, :food_bank, :boolean, default: false
  end
end
