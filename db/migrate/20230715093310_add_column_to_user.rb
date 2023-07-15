class AddColumnToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :name, :string
    add_column :users, :designation, :string
    add_column :users, :bio, :text
    add_column :users, :type, :string
    add_index :users, :name
  end
end
