object @product

attributes  :product_id
attributes  :product_name
attributes  :brand
attributes  :category
attributes  :sub_category
attributes  :product_weight
attributes  :product_calories


node :review do |product|
  product.reviews
end

node :list do |product|
  product.lists.inspect
end
