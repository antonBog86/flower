class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
    	t.string 	:name
    	t.string 	:path
      t.integer :version
    	t.integer :plant_id
      t.integer :category_id
      t.integer :subcategory_id

      t.timestamps
    end
  end
end
