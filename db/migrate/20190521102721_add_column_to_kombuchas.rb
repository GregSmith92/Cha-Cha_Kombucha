class AddColumnToKombuchas < ActiveRecord::Migration[5.2]
  def change
    add_column :kombuchas, :description, :string
  end
end
