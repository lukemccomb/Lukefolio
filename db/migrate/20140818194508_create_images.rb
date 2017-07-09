class CreateImages < ActiveRecord::Migration[5.0]
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
