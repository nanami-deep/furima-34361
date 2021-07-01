class ItemsController < ApplicationController
  before_action :set_item, except: [:index]#:new, :create
  before_action :authenticate_user!, except: [:index]#:show
  #before_action :contributor_confirmation, only: [:edit, :update, :destroy]

  def index
    @items = Item.includes(:user)
  end
  
  #def new
    #@item = Item.new
  #end

  #def create
    #@item = Item.new(prototype_params)
    #if @item.save
      #redirect_to root_path
    #else
      #render :new
    #end    
  #end
  
  #def show
  #end

  #def edit
  #end

  #def update
    #if @item.update(item_params)
      #redirect_to item_path(@item)
    #else
      #render :edit
    #end    
  #end

  #def destroy
    #item = Item.find(params[:id])
    #item.destroy   
  #end  
  
  private

  #def item_params
    #params.require(:item).permit(:neme, :item_price, :item_information, :item_condition_id, :shipping_charges_id, :prefecture_id, :days_to_ship_id, :category_id).marge(user_id: current_user.id)
  #end

  #def set_item
    #@item = Item.find(params[:id])
  #end
  
  def  move_to_index
    unless user_signed_in?
      redirect_to action: :index
    end
  end 
end
