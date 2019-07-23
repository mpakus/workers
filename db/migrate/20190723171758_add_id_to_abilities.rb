class AddIdToAbilities < ActiveRecord::Migration[5.2]
  def change
    add_column :abilities, :id, :primary_key
  end
end
