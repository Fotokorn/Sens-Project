class CreateProductPictures < ActiveRecord::Migration
  def change
    create_table :product_pictures do |t|
      t.references :product, index: true
      t.string :picture

      t.timestamps
    end
  end
end
