class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :domain_setup, index: true

      t.integer :product_id
      t.text :product_name
      t.text :ariane

      t.boolean :isActive
      t.boolean :isAvailable
      t.boolean :isBackOrder

      t.text :original_description

      t.float :price

      t.timestamps null: false
    end
  end
end
