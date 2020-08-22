class CreateResources < ActiveRecord::Migration[6.0]
  def change
    create_table :resources do |t|
      t.string :title
      t.text :description
      t.references :subcategory, null: false, foreign_key: true
      t.boolean :active, default: true
      t.string :classification
      t.references :spree_user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
