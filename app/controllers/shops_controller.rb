class ShopsController < ApplicationController
  def new
    @shop = Shop.new
  end

  def create

    @shop = Shop.new(user_params)
    if @shop.save
      redirect_to root_path, success: '登録が完了しました'
    else
      flash.now[:danger] = "登録に失敗しました"
      render :new
    end
  end

  private
  def shop_params
   params.require(:shop).permit(:name, :email, :password, :password_confirmation)
  end
end
