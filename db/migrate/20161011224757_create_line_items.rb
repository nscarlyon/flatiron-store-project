class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.integer :quantity, default: 1
      t.integer :cart_id
      t.integer :item_id

      t.timestamps
    end
  end
end
