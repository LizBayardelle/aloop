class CreateSubscribers < ActiveRecord::Migration[6.0]
  def change
    create_table :subscribers do |t|
      t.string :first_name
      t.string :email
      t.boolean :customer, default: false
      t.boolean :unsubscribed, default: false
      t.text :resource_id_array, default: [], array: true

      t.timestamps
    end
  end
end
