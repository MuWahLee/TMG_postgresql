class ReviewsController < ApplicationController

  # before_action :is_authenticated?
  before_action :get_review, except: [ :index, :new, :create ]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new ( review_params )

    if @.save
      redirect_to gear_form_url ( @review )
    else
      flash.now[:alert] = @get_review.errors
      render :new
    end
  end


  def index
    @reviews = Review.all.entries
  end

  def show
  end

  def edit
  end

  def update
    if
      @review.update_attributes ( review_params )
      redirect_to products_url( @product )
    else
      flash.now[:alert] = @review.errors
      render :edit
    end
  end

  def destroy
    @review.destroy
    redirect_to products_url, notice: "Deleted #{@review.review_id}."
  end


  private

  def get_review
    @review = Review.find( params[:id] )
  end

  def review_params
    params.require(:review).permit(
      :product_id,
      :user_id,
      # :category,
      # :sub_category,
      # :product_weight,
      # :product_calories
    )
  end

end
