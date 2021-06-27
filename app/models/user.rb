class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
  has_many :purchases
  
  validates :nickname,:birthday,:first_name,:first_name_kana,:last_name,:last_name_kana,:email,:password,:password_confirmation, presence: true
end