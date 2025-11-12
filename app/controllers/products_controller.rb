class ProductsController < ApplicationController
def show
    @product = Product.find(params[:id])

    render template: "products/show"
  end

  def index
    @products = Product.all

    render template: "products/index"
  end

   def create
    @product = Product.new(
      id: params[:id],
      name: params[:name],
      price: params[:price],
      image_url: params[:image_url],
      description: params[:description],
      supplierID: params[:supplierID]

    )

     if @product.save
      render :show, status: :created
    else
      render json: { errors: @product.errors }, status: :bad_request
    end
  end

  #   render template: "products/show"
  # end

 def update
    @product = Products.find(params[:id])

    @product.update(
      
      name: params[:name] || @product.name,
      price: params[:price] || @product.price,
      image_url: params[:image_url] || @product.image_url,
      description: params[:description] || @product.description,
      supplierID: params[:supplierID] || @product.supplierID
    )

    render :show
  end

  def destroy
    @product = Product.find(params[:id])

    @product.destroy

    render json: { message: "Product deleted..." }
  end
end
