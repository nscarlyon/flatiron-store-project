class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :current_card_id, :current_cart_id
  end
end
