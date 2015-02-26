require 'nokogiri'
require 'open-uri'

class Xpath < ActiveRecord::Base
  belongs_to :domain_setup
  def test domain, article_url
    page = Nokogiri::HTML( open( 'http://' + product_url ) )


      value = page.css( self.xpath )

      self.clean_rule

  end
end
