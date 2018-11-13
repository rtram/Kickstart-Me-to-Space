class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :planet_code
      t.integer :launch_year
      t.float :distance
      t.text :description
      t.integer :funding_goal
      t.timestamps
    end
  end
end
