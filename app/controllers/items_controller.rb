class ItemsController < ApplicationController
  before_action :check_login, except: [:index, :show]

  def new
    @item = Item.new
  end

  def index
    @items = Item.all
  end

  def show
    @item = Item.find(params[:id])
  end
  def edit
    @item = Item.find(params[:id])
  end

  def create

    @item = Item.new(item_params)
    if @item.save
      redirect_to items_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:image, :name, :description, :price)
  end
end
