class AddImageUrlsToBlog < ActiveRecord::Migration[6.0]
  def change
    add_column :blogs, :image_url, :string
    add_column :blogs, :pin1, :string
    add_column :blogs, :pin2, :string
    add_column :blogs, :pin3, :string
    add_column :blogs, :pin4, :string
  end
end
