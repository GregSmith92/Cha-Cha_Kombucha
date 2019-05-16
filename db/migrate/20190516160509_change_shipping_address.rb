class ChangeShippingAddress < ActiveRecord::Migration[5.2]
  def change
    rename_column :transactions, :shipping_addres, :shipping_address
  end
end
