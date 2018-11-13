class CreateColonists < ActiveRecord::Migration[5.2]
  def change
    create_table :colonists do |t|
      t.string :username
      t.string :password_digest
      t.string :first_name
      t.string :last_name
      t.string :codename
      t.integer :age
      t.string :profession
      t.string :gender
      t.timestamps
    end
  end
end
