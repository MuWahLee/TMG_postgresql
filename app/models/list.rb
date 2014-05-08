class List < ActiveRecord::Base

  belongs_to :user
  # has_many :products, :class_name => "Product", :foreign_key => :product_id
  has_and_belongs_to_many :products
end
