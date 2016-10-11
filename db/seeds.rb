counter = 1
10.times do
  Item.create(
    title: Faker::Commerce.product_name,
    inventory: Faker::Number.number(2),
    price: Faker::Number.number(4),
    category_id: counter
  )
  counter+=1
end
