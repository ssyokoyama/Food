class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end
  
  def index
    @shops = Shop.all
  end
  def show
    @shop = Shop.find(params[:id])
  end

  def create

    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  private
  def shop_params
   params.require(:shop).permit(:name, :email)
  end
end
