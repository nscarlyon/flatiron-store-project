class Item < ApplicationRecord
  belongs_to :category
  has_many :line_items
  has_many :reviews

  def self.available_items
    available_items = []
    Item.all.map do |i|
      if i.inventory > 0
        available_items << i.title
      end
    end
    available_items
  end

  def count_reviews
    self.reviews_count = self.reviews.length
  end

  def calculate_average
    if self.reviews.size > 1
      self.reviews.inject{|sum, el| sum.rating + el.rating}.to_f / self.reviews.size
    elsif self.reviews.size == 1
      return self.reviews.first.rating
    else
      return 0
    end
  end
end
