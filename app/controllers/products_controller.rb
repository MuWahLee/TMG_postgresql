class ProductsController < ApplicationController

  before_action :is_authenticated?
  before_action :get_product, except: [ :index, :new, :create ]

  def new
    @product = Product.new
  end

  def create
    @product = Product.new ( product_params )

    if @product.save
      redirect_to gear_form_url ( @product )
    else
      flash.now[:alert] = @product.errors
      render :new
    end
  end


  def index
    @products = Product.all.entries
  end

  def show
  end

  def edit
  end

  def update
    if
      @product.update_attributes ( product_params )
      redirect_to products_url( @product )
    else
      flash.now[:alert] = @product.errors
      render :edit
    end
  end

  def destroy
    @product.destroy
    redirect_to products_url, notice: "Deleted #{@product.product_name}."
  end


  private

  def get_product
    @product = Product.find( params[:id] )
  end

  def product_params
    params.require(:product).permit(
      :product_name,
      :brand,
      :category,
      :sub_category,
      :product_weight,
      :product_calories
    )
  end

end
