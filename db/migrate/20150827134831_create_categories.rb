class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :name,       index: true
      t.integer :parent_id, index: true

      t.timestamps null: false
    end
  end
end
