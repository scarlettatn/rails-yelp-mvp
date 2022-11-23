class ReviewsController < ActionController::Base
  before_action :set_restaurant

  def new
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.restaurant = @restaurant
    # if valid, =>save
    if @review.save
      redirect_to restaurants_path(Restaurant.last)
      # redirect_to restaurants_path(@restaurant_id)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:rating, :content)
  end
end
