class ListsController < ApplicationController
  before_action :is_authenticated?

  def new
  end

  def create
  end

  def index
  end

  def show
  end

  def edit
    @lists = List.all.entries
  end

  def update
    if current_user.update_attributes( user_params)
      redirect_to list_form_url, notice: "Your list has been updated"
    else
      flash.now[:alert] = "Sorry. Can't update your list"
      render :edit
    end
  end

  def destroy
  end

  private

  def user_params
    params.require(:user).permit( product_ids: [])
  end

end