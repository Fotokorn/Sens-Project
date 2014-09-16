class Invoice < ActiveRecord::Base
  belongs_to :user
  belongs_to :country
  belongs_to :shipping
  belongs_to :payment_type

  has_many :orders
end
