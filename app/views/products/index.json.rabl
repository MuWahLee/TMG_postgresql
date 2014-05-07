collection @products, root: :products

attributes :id,  :product_id
attributes :id,  :product_name
attributes :id,  :brand
attributes :id,  :category
attributes :id,  :sub_category
attributes :id,  :product_weight
attributes :id,  :product_calories

node :href do |product|
  product_url (product)
end

# node :review do |product|
#   product.review.review
# end