class CreateCategoryProducts < ActiveRecord::Migration
  def change
    create_table :category_products do |t|
      t.references :product, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
