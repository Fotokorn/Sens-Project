class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.integer :price
      t.string :picture
      t.string :status
      t.string :size
      t.string :color
      t.integer :quantity
      t.references :general_information, index: true
      t.references :product_preview, index: true

      t.timestamps
    end
  end
end
