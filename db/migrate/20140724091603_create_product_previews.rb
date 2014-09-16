class CreateProductPreviews < ActiveRecord::Migration
  def change
    create_table :product_previews do |t|
      t.string :name
      t.integer :price
      t.string :picture
      t.text :decription

      t.timestamps
    end
  end
end
