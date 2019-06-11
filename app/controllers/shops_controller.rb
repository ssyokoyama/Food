class ShopsController < ApplicationController
  before_action :check_login, except: [:index, :show]

  def new
    @shop = Shop.new
    @shops = Shop.where(prefecure_id:current_user.id)
  end

  def index
    @shops = Shop.where(user_id: current_user.id)
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
    @shops = Shop.where(prefecure_id:current_user.id)
    @shop.user_id = current_user.id
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
