class RenameTableItemsToProducts < ActiveRecord::Migration
  def change
    rename_table :items, :products

  end
end
