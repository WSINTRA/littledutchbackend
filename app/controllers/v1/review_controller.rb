class V1::ReviewController < ApplicationController
  def new

   @new_review = Review.create(review_params)
    render json: @new_review
  end

  def edit
  	binding.pry
  end

  def delete
  end


   private
	def review_params
		params.require(:review).permit(:title, :user_id, :content, :product_id)
	end
end
