class AddFieldsToSpreeUser < ActiveRecord::Migration[6.0]
  def change
    add_column :spree_users, :first_name, :string
    add_column :spree_users, :last_name, :string
    add_column :spree_users, :bio, :text
    add_column :spree_users, :avatar_url, :string
  end
end
