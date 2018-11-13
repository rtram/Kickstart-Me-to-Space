class CreateDonations < ActiveRecord::Migration[5.2]
  def change
    create_table :donations do |t|
      t.integer :sponsor_id
      t.integer :planet_id
      t.integer :amount
      t.timestamps
    end
  end
end
