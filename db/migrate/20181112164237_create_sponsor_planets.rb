class CreateSponsorPlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsor_planets do |t|
      t.integer :sponsor_id
      t.integer :planet_id

      t.timestamps
    end
  end
end
