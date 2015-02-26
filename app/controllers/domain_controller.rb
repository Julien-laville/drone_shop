require 'nokogiri'
require 'open-uri'

class DomainController < ApplicationController
  def index
    @domains = DomainSetup.all
  end

  def crawl
    columns = Product.column_names

    domain = DomainSetup.find params[:id]

    for product_number in Array(domain.last_read_id..100000)
      product_url = domain.name + domain.product_url.gsub( '%d', 54824.to_s )
      will_save_product = get_product product_url, domain
      domain.products << will_save_product
    end

  end

  def add_rule
    domain = DomainSetup.find params[:id]
    domain.xpaths << Xpath.new(params)
  end

  def test_rule
    Xpath.new params
  end

  def show
    @domain = DomainSetup.find params[:id]
  end

  def get_product product_url, domain
    page = Nokogiri::HTML( open( 'http://' + product_url ) )

    will_save_product = Product.new

    for xpath in domain.xpaths
      column_name = xpath.column_name
      path = xpath.path


      value = page.css( path )

      will_save_product.send "#{column_name}=", value.to_s

      return will_save_product

    end

  end
end
