class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string "url",            null: false
      t.string "title",           null: false
      t.string "keywords", null: false
      t.string "caption"

      t.timestamps
    end
  end
end
