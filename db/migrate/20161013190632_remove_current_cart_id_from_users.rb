class RemoveCurrentCartIdFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :current_cart_id, :integer
  end
end
