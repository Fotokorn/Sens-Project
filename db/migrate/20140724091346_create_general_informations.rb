class CreateGeneralInformations < ActiveRecord::Migration
  def change
    create_table :general_informations do |t|
      t.string :type
      t.text :content

      t.timestamps
    end
  end
end
