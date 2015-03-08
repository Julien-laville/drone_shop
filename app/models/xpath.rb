require 'nokogiri'
require 'open-uri'

class Xpath < ActiveRecord::Base
  belongs_to :domain_setup
  def test
    page = Nokogiri::HTML( open( self.domain_setup.product_sample_url ) )
    value = page.xpath( self.path ).text
    if !self.clean_rule.empty?
      return Regexp.new(self.clean_rule).match(value)
    end
    return value
  end
end
