class RenameColumnItemToReviews < ActiveRecord::Migration

  def change
    rename_column :reviews, :item_id, :product_id
  end

end
