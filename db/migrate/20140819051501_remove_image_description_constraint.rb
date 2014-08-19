class RemoveImageDescriptionConstraint < ActiveRecord::Migration
  def change
    change_column :images, :keywords, :string, null: true
  end
end
