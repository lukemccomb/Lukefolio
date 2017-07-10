class AddColumn < ActiveRecord::Migration[5.1]
  def change
    add_column :images, :keywords, :string, array: true, default: []
  end
end
