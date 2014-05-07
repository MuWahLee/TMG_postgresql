class Product < ActiveRecord::Base

  has_many  :users, :through => :lists
  has_many  :reviews

  validates :product_name, presence: true

end

