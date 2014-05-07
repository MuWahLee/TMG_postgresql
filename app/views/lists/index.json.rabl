collection @lists, root: :lists

attributes :id,  :list_id
attributes :id,  :list_name
attributes :id,  :user_id
attributes :id,  :product_id


node :href do |list|
  list_url (list)
end
