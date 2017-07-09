class AddThumbsToImages < ActiveRecord::Migration[5.0]
  def change
    add_column :images, :thumb, :string
  end
end
