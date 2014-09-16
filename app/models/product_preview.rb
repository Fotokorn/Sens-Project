class ProductPreview < ActiveRecord::Base

  has_many :products
  has_many :category_products
  has_many :categories, through: :category_products

  accepts_nested_attributes_for :category_products
  accepts_nested_attributes_for :products, :allow_destroy => true

  mount_uploader :picture, PictureUploader
end
