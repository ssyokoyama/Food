class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :info, :warning, :danger
  include ApplicationHelper


  def check_login
      unless logged_in?
        redirect_to login_path, danger: 'このページを閲覧するにはユーザ登録が必要です'
      end
    end




end
