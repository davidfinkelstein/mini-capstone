class Api::ProductsController < ApplicationController #Api:: <=== namespace

  def index
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def show
    @product = Product.find_by(id: params[:id])
    render 'show.json.jbuilder'
  end

  def new
    @products = Product.all
    render 'index.json.jbuilder'
  end

  def create
    @product = Product.create(
      name: params[:name],
      price: params[:price],
      description: params[:description]
      )
    render 'show.json.jbuilder'
  end

  def update
      @product = Product.find(params[:id])

      #attribute writer
      #.save
      @product.name = params[:name] || @product.name
      @product.price = params[:price] || @product.price
      @product.image_url = params[:image_url] || @product.image_url
      @product.description = params[:description] || @product.description
      
      @product.save
    render 'show.json.jbuilder'
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    render json:{message: "Product successfully destroyed"}
  end
    # def product_method
  #   @products = Product.all
  #   render 'shop.json.jbuilder'
  # end

  # def first_product_method
  #   @products = Product.find_by(id: 1) 
  #   render 'first_product.json.jbuilder'
  # end

  # def second_product_method
  #   @products = Product.find_by(id: 2)
  #   render 'second_product.json.jbuilder'
  # end

  # def any_product_query_method
  #   @product = Product.find_by(id: params["id"])
  #   render 'first_product_query.json.jbuilder'
  # end


end