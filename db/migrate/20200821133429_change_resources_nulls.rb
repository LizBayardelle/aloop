class ChangeResourcesNulls < ActiveRecord::Migration[6.0]
  def change
    change_column :resources, :subcategory_id, :bigint, null: true
    change_column :resources, :spree_user_id, :bigint, null: true
  end
end
