class PaymentType < ActiveRecord::Base

  has_many :invoices
end
