class ItemsController < ApplicationController
  def new
    @item = Item.new
  end

  def create
    @Item = current_user.items.new(item_params)

    if @item.save
      redirect_to items_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end

  private
  def item_params
    params.require(:item).permit(:image, :name,:price)
  end
end
