class ProductController < ApplicationController
  def index
    @products = Product.all
  end

  def show
    @product = Product.find params[:id]
  end

  def edit
    roduct.find(params[:id])
  end

  def update
    Product.find(params[:id]).update_attributes(params[:product].permit!)
  end
end
