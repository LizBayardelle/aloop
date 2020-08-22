class CreateSubcategories < ActiveRecord::Migration[6.0]
  def change
    create_table :subcategories do |t|
      t.string :name
      t.text :description
      t.boolean :active, default: true
      t.string :slug

      t.timestamps
    end
  end
end
