class FavoritesController < ApplicationControllerdef index
    @favorite_items = current_user.favorite_items
  end

  def create
    favorite = Favorite.new
    favorite.user_id = current_user.id
    favorite.item_id = params[:item_id]

    if favorite.save
      redirect_to items_path, success: 'お気に入りに登録しました'
    else
      redirect_to items_path, danger: 'お気に入りに登録に失敗しました'
    end
  end
end
