class CreatePlants < ActiveRecord::Migration
  def change
    create_table :plants do |t|
      t.string    :name,         index: true
      t.integer   :category_id,  index: true
      t.string    :science_name
      t.string 		:leaf_color
      t.string		:blossom_color
      t.date      :blossom_start
      t.string    :blossom_duration
      t.text      :description
      t.float     :price

      t.string    :seo_title
      t.text      :seo_keywords
      t.string    :seo_description, limit: 160

      t.timestamps null: false
    end
  end
end
