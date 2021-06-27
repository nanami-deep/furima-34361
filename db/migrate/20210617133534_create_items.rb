class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string     :name,                 null: false
      t.integer    :item_price,           null: false
      t.text       :item_information,     null: false
      t.integer    :item_condition_id,    null: false
      t.integer    :shipping_charges_id,  null: false
      t.integer    :prefecture_id,        null: false
      t.integer    :days_to_ship_id,      null: false
      t.integer    :category_id,          null: false
      t.references :user,                 null: false, foreign_key: true 
      t.timestamps 
    end
  end
end
