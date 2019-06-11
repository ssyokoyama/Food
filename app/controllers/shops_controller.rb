class ShopsController < ApplicationController
  before_action :check_login, except: [:index, :show]
  
  def new
    @shop = Shop.new
  end

  def index
    @shops = Shop.all
  end
  def show
    @shop = Shop.find(params[:id])
  end

  def edit
    @shop = Shop.find(params[:id])
  end

  def update
    @shop = Shop.new(shop_params)
    if @shop.update
      redirect_to shops_path, success: '更新が完了しました'
    else
      flash.now[:danger] = "更新に失敗しました"
      render :new
    end

  end

  def create

    @shop = Shop.new(shop_params)
    if @shop.save
      redirect_to shops_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  private
  def shop_params
   params.require(:shop).permit(:name, :email, :user_id)
  end
end
