class AddTypeToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :type, :string, limit: 64
    add_index :users, :type
  end
end
