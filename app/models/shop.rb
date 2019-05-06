class Shop < ApplicationRecord
  validates :password, length: { in: 8..32 }
  validates :email, format: {with: /\A[\w+\-~.]+@[a-z\d\-.]+\.[a-z]+\z/i}
  validates :password, format: {with: /\A(?=.*?[a-z])(?=.*?\d)[a-z\d]{8,32}\z/i}
  validates :name, presence: true, length: { maximum: 50 }
    has_secure_password
  end
