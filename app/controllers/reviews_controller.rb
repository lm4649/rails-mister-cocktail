class ReviewsController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      flash.now[:alert] = "Something went wrong."
      redirect_to cocktail_path(@cocktail)
    end
  end

  private

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
