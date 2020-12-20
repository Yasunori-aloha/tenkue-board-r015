class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  with_options presence: true do
    validates :name, :password_confirmation
    validates :email, format: { with: /\A[\x01-\x7E]+\z/ }
    validates :password, format: { with: /\A(?=.*[0-9])(?=.*[a-zA-Z])([a-zA-z0-9]{8,32})\z/ }, confirmation: true
  end

  has_many :posts
end
