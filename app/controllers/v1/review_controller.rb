class V1::ReviewController < ApplicationController
  def new
   new_review = Review.create(review_params)
   render json: new_review
  end

  def update
  
    id = params["review_id"]
    review_for_edit = Review.find(id)
    review_for_edit.update(review_params)
    render json: review_for_edit
  end

  def delete
  end


   private
	def review_params
		params.require(:review).permit(:title, :user_id, :content, :product_id)
	end
end
