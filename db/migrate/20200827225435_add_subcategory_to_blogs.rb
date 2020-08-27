class AddSubcategoryToBlogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :blogs, :subcategory, foreign_key: true
  end
end
