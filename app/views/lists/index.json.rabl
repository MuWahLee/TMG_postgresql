collection @lists, root: :lists

attributes :id,  :list_name
attributes :id,  :list_id
attributes :id,  :user_id
attributes :id,  :product_id


node :href do |list|
  list_url (list)
end

# node :product_name do |list|
#   list.products.product_name
# end

