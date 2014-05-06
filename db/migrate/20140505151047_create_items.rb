class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string  :item_name
      t.string  :brand
      t.string  :category
      t.string  :sub_category
      t.integer :weight
      t.integer :calories

      t.timestamps
    end
  end
end
