collection @reviews, root: :reviews

attributes  :id,  :review_id
attributes  :id,  :review
attributes  :id,  :user_id
attributes  :id,  :product_id


node :href do |review|
  review_url (review)
end
