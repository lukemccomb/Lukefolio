class CreateCommentsTable < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.string :comment
      t.integer :user_id
      t.integer :image_id
      t.boolean :visible, default: true

      t.timestamps
    end
  end
end
