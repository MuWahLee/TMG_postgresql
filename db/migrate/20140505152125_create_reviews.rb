class CreateReviews < ActiveRecord::Migration
  def change
    create_table  :reviews do |t|
      t.string    :review
      t.integer   :user_id
      t.integer   :item_id

      t.timestamps
    end
    add_index :reviews, ["user_id", "item_id"]
  end
end
