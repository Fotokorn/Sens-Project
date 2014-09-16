class ChangeProducttoProductPreview < ActiveRecord::Migration
  def change
    rename_column :category_products, :product_id, :product_preview_id
  end
end
