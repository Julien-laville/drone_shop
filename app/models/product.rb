class Product < ActiveRecord::Base
  has_many :product_comments
  has_one :domain_setup
  has_and_belongs_to_many :product_categories
  belongs_to :product_constructor
end
