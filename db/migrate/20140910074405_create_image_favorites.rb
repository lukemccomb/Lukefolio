class CreateImageFavorites < ActiveRecord::Migration
  def change
    create_table :image_favorites do |t|
      t.integer :user_id
      t.integer :image_id
      t.boolean :favorite
    end
  end
end
