class Api::ProductsController < ApplicationController #Api:: <=== namespace

  def product_method
    @products = Product.all
    render 'shop.json.jbuilder'
  end
end
