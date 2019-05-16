class AddFirstNameToTransactions < ActiveRecord::Migration[5.2]
  def change
    add_column :transactions, :first_name, :string
    add_column :transactions, :last_name, :string
    add_column :transactions, :shipping_addres, :string
    add_column :transactions, :card_number, :string
  end
end
