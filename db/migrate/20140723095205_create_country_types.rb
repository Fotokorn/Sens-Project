class CreateCountryTypes < ActiveRecord::Migration
  def change
    create_table :country_types do |t|
      t.string :name
      t.integer :shipping_cost

      t.timestamps
    end
  end
end
