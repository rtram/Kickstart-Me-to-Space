class CreateSponsers < ActiveRecord::Migration[5.2]
  def change
    create_table :sponsers do |t|
      t.string :first_name
      t.string :last_name
      t.integer :net_worth
      t.text :goal

      t.timestamps
    end
  end
end
