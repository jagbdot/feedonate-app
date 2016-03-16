class AddDonorToUsers < ActiveRecord::Migration
  def change
    add_column :users, :donor, :boolean, default: false
  end
end
