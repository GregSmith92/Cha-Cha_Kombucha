class CreateKombuchas < ActiveRecord::Migration[5.2]
  def change
    create_table :kombuchas do |t|
      t.string :name
      t.integer :price
      t.integer :rating
      t.string :flavour
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
