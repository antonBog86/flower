class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string 	:name
      t.string 	:path
      t.integer :version
      t.integer :plant_id,    index: true
      t.integer :category_id, index: true
      # custom ordering
      t.integer :weight,      index: true, default: 0, null: false

      t.timestamps null: false
    end
  end
end
