class RemoveImageDescriptionConstraint < ActiveRecord::Migration[5.0]
  def change
    change_column :images, :keywords, :string, null: true
  end
end
