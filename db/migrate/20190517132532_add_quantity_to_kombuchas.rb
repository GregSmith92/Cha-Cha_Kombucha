class AddQuantityToKombuchas < ActiveRecord::Migration[5.2]
  def change
    add_column :kombuchas, :quantity, :integer
  end
end
