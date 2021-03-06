class Item < ApplicationRecord
  validates :name, presence: true
  validates :price, presence: true
  validates :shop_id, presence: true
  # validates :category_id, presence: true
  validates :image, presence: true
  # validates :item_id, presence: true
  # validates :finish_at, presence: true
  validates :description, presence: true

  has_many :shops
  has_many :users

  mount_uploader :image, ImageUploader
end
