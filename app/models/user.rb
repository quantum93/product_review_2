class User < ApplicationRecord
  validates :email, presence: true
  has_many :reviews, dependent: :destroy
  # has_many :products, dependent: :destroy
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
