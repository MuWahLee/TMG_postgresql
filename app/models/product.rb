class Product < ActiveRecord::Base

  has_and_belongs_to_many  :lists
  has_many  :reviews

  validates :product_name, presence: true

end

