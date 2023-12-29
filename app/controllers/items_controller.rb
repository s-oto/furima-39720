class ItemsController < ApplicationController
  before_action :authenticate_user!, except: [:index, :show]

   def index
     @items = Item.all
   end

   def new
    @item = Item.new
  end

  # def create
  #   @item = Item.create(item_params)
  #   if @item.valid?
  #     redirect_to root_path
  #   else
  #     render :new
  #   end
  # end
  def create
    @item = Item.create(item_params)
    if @item.valid?
      redirect_to root_path
    else
      flash[:error] = @item.errors.full_messages.join(", ")
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:item, :description, :price, :category_id, :status_id, :charge_id, :day_id, :prefecture_id, :image).merge(user_id: current_user.id)
  end
end
