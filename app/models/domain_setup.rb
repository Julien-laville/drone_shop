class DomainSetup < ActiveRecord::Base
  has_many :xpaths
  has_many :products
end
