class Product < ApplicationRecord
  has_many :images, dependent: :destroy, inverse_of: :product
  accepts_nested_attributes_for :images, allow_destroy: true
  validates_associated :images
  belongs_to :category

end
