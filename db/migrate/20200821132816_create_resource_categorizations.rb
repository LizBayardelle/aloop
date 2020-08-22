class CreateResourceCategorizations < ActiveRecord::Migration[6.0]
  def change
    create_table :resource_categorizations do |t|
      t.references :resource, null: false, foreign_key: true
      t.references :subcategory, null: false, foreign_key: true

      t.timestamps
    end
  end
end
