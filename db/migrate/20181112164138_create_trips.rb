class CreateTrips < ActiveRecord::Migration[5.2]
  def change
    create_table :trips do |t|
      t.integer :colonist_id
      t.integer :planet_id

      t.timestamps
    end
  end
end
