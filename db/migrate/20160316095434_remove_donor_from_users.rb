class RemoveDonorFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :donor, :boolean
  end
end
