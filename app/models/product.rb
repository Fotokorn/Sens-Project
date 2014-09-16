class Product < ActiveRecord::Base
  belongs_to :general_information
  belongs_to :product_preview

  has_many :product_pictures
  has_many :orders


  before_create :set_product_info

  private

  def set_product_info
    self.name = product_preview.name
    self.price = product_preview.price
  end

end
