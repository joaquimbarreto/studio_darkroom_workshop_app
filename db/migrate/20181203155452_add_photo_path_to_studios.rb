class AddPhotoPathToStudios < ActiveRecord::Migration[5.2]
  def change
    add_column :studios, :photo_path, :string
  end
end
