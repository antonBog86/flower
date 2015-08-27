class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
			t.string    :name
      t.integer   :subcategory_id
      t.string    :science_name
      t.string 		:leaf_collor
      t.string		:blossom_collor
      t.string    :blossom_start
      t.string    :blossom_duration
      t.text      :description

      t.timestamps
    end
  end
end
