class V1::ProductsController < ApplicationController
skip_before_action :authorized, only: [:index]
	def create
		binding.pry
	end

	def index
		
		@products = Product.all
		render json: @products
	end

	def update
		binding.pry
	end
end
