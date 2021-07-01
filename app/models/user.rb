class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :products
  has_many :purchases
  
  with_options presence: true do
    validates :nickname
    validates :email
    validates :password
    validates :password_confirmation
    validates :birthday
    validates :first_name, :last_name, format: {with: /\A[ぁ-んァ-ン一-龥]/ }
    validates :first_name_kana, :last_name_kana, format: {with: /\A[ァ-ヶー－]+\z/ } 
  end
end  