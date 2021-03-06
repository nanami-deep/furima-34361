class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  #has_many :products
  #has_many :purchases
  
  with_options presence: true do
    validates :password, :password_confirmation, format: {with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i }
    validates :nickname
    validates :birthday
    validates :first_name, :last_name, format: {with: /\A[ぁ-んァ-ン一-龥々ー]/ }
    validates :first_name_kana, :last_name_kana, format: {with: /\A[ァ-ヶー－]+\z/ } 
  end
end  