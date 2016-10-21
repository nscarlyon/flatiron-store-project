class ItemSerializer < ActiveModel::Serializer
  attributes :id, :title, :inventory, :price, :category_id, :average_rating, :reviews_count
  has_many :reviews
end
