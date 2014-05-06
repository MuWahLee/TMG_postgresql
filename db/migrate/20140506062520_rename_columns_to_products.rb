class RenameColumnsToProducts < ActiveRecord::Migration
  def change
    rename_column :products, :weight, :product_weight
    rename_column :products, :calories, :product_calories
  end
end

