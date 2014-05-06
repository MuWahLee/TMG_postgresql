class Product < ActiveRecord::Base

  has_many  :users
  has_many  :reviews

  validates :product_name, presence: true

end

