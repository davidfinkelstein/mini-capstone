class Api::ProductsController < ApplicationController #Api:: <=== namespace

  before_action :authenticate_admin, except: [:index, :show]

  def index

    @products = Product.all.order(:id)

    if params[:name]
      @products = Product.where("name LIKE ?", "%#{params[:name]}%") 
    end

    if params[:price_sort]
      @products = @products.order(price: :asc)
    else
      @products = @products.order(id: :asc)
    end

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
      description: params[:description],
      in_stock: params[:in_stock],
      supplier_id: params[:supplier_id],
      image: params[:image]
      )
    if @product.save
      render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity # sad path
    end
  end

  def update
      @product = Product.find(params[:id])

      #attribute writer
      #.save
      @product.name = params[:name] || @product.name
      @product.price = params[:price] || @product.price
      @product.image = params[:image_url] || @product.image
      @product.description = params[:description] || @product.description
      @product.in_stock = params[:in_stock] || @product.in_stock
      @product.supplier_id = params[:supplier_id] || @product.supplier_id
      
    if @product.save
      render 'show.json.jbuilder' #happy path
    else
      render json: {errors: @product.errors.full_messages}, status: :unprocessable_entity # sad path
    end
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