class CreateContentData < ActiveRecord::Migration
  def change
    create_table :content_data do |t|
      t.string :owner_name
      t.string :owner_second_name
      t.string :owner_third_name
      t.string :home_address
      t.string :trade_address
      t.string :static_phone
      t.string :mobile_phone

      t.timestamps
    end
  end
end
