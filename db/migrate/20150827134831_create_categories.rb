class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string  :name,       index: true
      t.integer :parent_id, index: true
      t.text    :description

      t.string    :seo_title
      t.text      :seo_keywords
      t.string    :seo_description, limit: 160

      t.timestamps null: false
    end
  end
end
