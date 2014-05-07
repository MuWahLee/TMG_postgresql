class CreateLists < ActiveRecord::Migration
  def change
    create_table :lists do |t|
      t.integer :user_id
      t.integer :product_id
      t.string  :list_name

      t.timestamps
    end
  add_index :lists, ["user_id", "product_id"]
  end
end
