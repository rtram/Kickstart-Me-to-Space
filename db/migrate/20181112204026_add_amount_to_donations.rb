class AddAmountToDonations < ActiveRecord::Migration[5.2]
  def change
    add_column :donations, :amount, :integer
  end
end
