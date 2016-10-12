class Cart < ApplicationRecord
  belongs_to :user
  has_one :order
  has_many :line_items
  has_many :items, through: :line_items

  def total
    total_price = 0
      line_items.each do |line|
          item = Item.find_by(id: line.item_id)
          total_price += (item.price * line.quantity)
      end
    total_price
  end

  def new_inventory
    line_items.each do |line|
        item = Item.find_by(id: line.item_id)
        item.inventory -= line.quantity
        item.save
    end
  end

  def add_item(item_id)
    if line_items.find_by(item_id: item_id)
      current_line_item = line_items.find_by(item_id: item_id)
      current_line_item.quantity += 1
      current_line_item.save
      current_line_item
    else
        line_items.create(item_id: item_id)
    end
  end

  def delete_item(item_id)
    current_line_item = line_items.find_by(item_id: item_id)
    current_line_item.quantity -=1

    if current_line_item.quantity <= 0
      current_line_item.destroy
    else
      current_line_item.save
    end
  end
end
