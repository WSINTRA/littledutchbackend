class V1::ProductsController < ApplicationController
skip_before_action :authorized, only: [:index]

	def create
		@new_product = Product.create(product_params)
        render json: @new_product
	end

	def index
		@products = Product.all
		render json: @products
	end

	def update
		product_to_edit = Product.find(params["id"])
		product_to_edit.update_attributes(product_params)
		render json: product_to_edit
	end
    
    private
	def product_params
		params.require(:product).permit(:title, :rating, :description, :price, :image, :in_menu)
	end
end
