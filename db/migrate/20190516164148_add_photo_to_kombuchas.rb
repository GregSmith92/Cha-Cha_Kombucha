class AddPhotoToKombuchas < ActiveRecord::Migration[5.2]
  def change
    add_column :kombuchas, :photo, :string
  end
end
