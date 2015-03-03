class AdminController < ApplicationController
  def index
    @domains = DomainSetup.all
    @products = Product.all
  end
end
