class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :postal_code
      t.references :user, index: true
      t.references :country, index: true

      t.timestamps
    end
  end
end
