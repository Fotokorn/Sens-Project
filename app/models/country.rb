class Country < ActiveRecord::Base
  belongs_to :country_type

  has_many :addresses
  has_many :invoices

  default_scope { order(:name) }
end
