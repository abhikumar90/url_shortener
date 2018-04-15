class AddColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :contact, :integer
    add_column :users, :address, :text
  end
end
