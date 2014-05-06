class RenameColumnItemNameToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :item_name, :product_name
  end
end
