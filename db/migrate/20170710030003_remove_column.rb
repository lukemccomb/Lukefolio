class RemoveColumn < ActiveRecord::Migration[5.1]
  def change
    remove_column :images, :keywords, :string
  end
end
