class Product < ActiveRecord::Base
  has_many :product_comments
  has_one :domain_setup
end
