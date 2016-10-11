class AddCurrentCartToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :current_card_id, :integer
  end
end
