class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :buyed_products, foreign_key: "buyer_id", class_name: "product"
  has_many :saling_products, -> { where("buyer_id is NULL") }, foreign_key: "saler_id", class_name: "product"
  has_many :sold_products, -> { where("buyer_id is not NULL") }, foreign_key: "saler_id", class_name: "product"


  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

end
