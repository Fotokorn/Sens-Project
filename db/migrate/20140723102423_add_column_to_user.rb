class AddColumnToUser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :username, :string
    add_column :users, :sex, :string
    add_column :users, :birthdate, :date
    add_column :users, :telephone, :string
  end
end
