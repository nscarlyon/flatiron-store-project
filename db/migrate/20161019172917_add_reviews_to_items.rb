class AddReviewsToItems < ActiveRecord::Migration[5.0]
  def change
    add_column :items, :average_rating, :float, :default => 0
    add_column :items, :reviews_count, :integer, :default => 0
  end
end
