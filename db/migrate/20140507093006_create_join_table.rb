class CreateJoinTable < ActiveRecord::Migration

  def change
    create_join_table :lists, :products do |t|
      t.index  :product_id
      t.index  :list_id
      t.string :name_of_list

    end
  end
end
