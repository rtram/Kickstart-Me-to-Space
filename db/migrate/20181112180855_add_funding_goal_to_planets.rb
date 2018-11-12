class AddFundingGoalToPlanets < ActiveRecord::Migration[5.2]
  def change
    add_column :planets, :funding_goal, :integer
  end
end
