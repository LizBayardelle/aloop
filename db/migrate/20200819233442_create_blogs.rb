class CreateBlogs < ActiveRecord::Migration[6.0]
  def change
    create_table :blogs do |t|
      t.string :title
      t.string :teaser
      t.text :body
      t.boolean :published, default: false
      t.datetime :published_at
      t.string :video_url
      t.references :spree_user, null: false, foreign_key: true
      t.references :resource, null: false, foreign_key: true
      t.string :slug

      t.timestamps
    end
  end
end
