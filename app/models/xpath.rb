require 'nokogiri'
require 'open-uri'

class Xpath < ActiveRecord::Base
  belongs_to :domain_setup
  def test
    page = Nokogiri::HTML( open( self.domain_setup.product_sample_url ) )
    value = page.css( self.path ).text
    return Regexp.new(self.clean_rule).match(value)

  end
end
