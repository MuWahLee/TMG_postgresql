class ListsController < ApplicationController
  before_action :is_authenticated?
  before_action :get_list, except: [ :index, :new, :create ]

  def new
    @list = List.new
  end

  def create
    @list = List.new ( list_params )

    if @list.save
      redirect_to gear_form_url ( @review )
    else
      flash.now[:alert] = @list.errors
      render :new
    end
  end

  def index
    @lists = List.all.entries
  end

  def show
  end

  def edit
    @lists = List.all.entries
  end

  def update
    if current_user.update_attributes( list_params)
      redirect_to list_form_url, notice: "Your list has been updated"
    else
      flash.now[:alert] = "Sorry. Can't update your list"
      render :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to lists_url, notice: "Deleted #{@list.list_id}."

  end

  private

  def get_list
    @list = List.find( params[:id] )
  end

  def list_params
    params.require(:list).permit( :list_id, :list_name, :user_id, :product_id)
  end

end