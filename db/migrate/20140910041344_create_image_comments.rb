class CreateImageComments < ActiveRecord::Migration
  def change
    create_table :image_comments do |t|
      t.integer :user_id
      t.integer :image_id
    end
  end
end
