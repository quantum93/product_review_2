class RemoveForeignKeyForProducts < ActiveRecord::Migration[5.2]
  def change
    remove_foreign_key :products, :users
  end
end
