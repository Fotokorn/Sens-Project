class CreateInvoices < ActiveRecord::Migration
  def change
    create_table :invoices do |t|
      t.references :user, index: true
      t.integer :total
      t.string :address
      t.string :city
      t.string :postal_code
      t.string :telephone
      t.references :country, index: true
      t.references :shipping, index: true
      t.datetime :datetime_of_payment
      t.string :status_of_payment
      t.references :payment_type, index: true

      t.timestamps
    end
  end
end
