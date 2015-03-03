class User < ActiveRecord::Base
  has_many :product_comments
end
