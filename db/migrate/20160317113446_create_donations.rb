class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.datetime :date
      t.text :description

      t.timestamps null: false
    end
  end
end
