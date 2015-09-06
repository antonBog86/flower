class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string  :orderer_name
      t.string  :orderer_email, null: false
      t.string  :orderer_comment
      t.integer :state, index: true
      t.string  :token, index: true

      t.float  :price_summary

      t.timestamps null: false
    end
  end
end
