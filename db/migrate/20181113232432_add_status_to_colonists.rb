class AddStatusToColonists < ActiveRecord::Migration[5.2]
  def change
    add_column :colonists, :status, :string
  end
end
