class ProductsController < ApplicationController
	def index
		@products = Product.all
	end
	def new
		@product =Product.new
	end
	def create
		Product.create(product_params)
		redirect_to(products_path )
	end
	def edit
		@product = Product.find(params[:id])
	end
	def update
		@product = Product.find(params[:id])
		@product.update_attributes(product_params)
		redirect_to(products_path)
	end
	def product_params
		params.require(:product).permit(:name, :price, :description)
	end
end