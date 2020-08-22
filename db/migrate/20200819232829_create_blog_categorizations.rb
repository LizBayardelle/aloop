class CreateBlogCategorizations < ActiveRecord::Migration[6.0]
  def change
    create_table "blog_categorizations", force: :cascade do |t|
      t.bigint "blog_id"
      t.bigint "subcategory_id"
      t.datetime "created_at", null: false
      t.datetime "updated_at", null: false
      t.index ["blog_id"], name: "index_blog_categorizations_on_blog_id"
      t.index ["subcategory_id"], name: "index_blog_categorizations_on_subcategory_id"
    end
  end
end
