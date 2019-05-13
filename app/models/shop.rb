class Shop < ApplicationRecord
  validates :name, presence: true
  validates :email, presence: true
  validates :shop_id, presence: true
  validates :city_id, presence: true
  validates :prefecture_id, presence: true


  has_many :items
  mount_uploader :image, ImageUploader
end
