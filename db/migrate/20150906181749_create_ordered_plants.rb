class CreateOrderedPlants < ActiveRecord::Migration
  def change
    create_table :ordered_plants do |t|
      t.belongs_to :plant, null: false
      t.belongs_to :order, null: false
      t.float      :price, null: false

      t.index [:plant_id, :order_id]
      t.index [:order_id, :plant_id]

      t.timestamps null: false
    end
  end
end
