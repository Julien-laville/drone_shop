class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.belongs_to :domain_setup, index: true

      t.belongs_to :product_constructor, index: true


      t.integer :product_id
      t.text :product_name
      t.text :ariane
      t.text :pictures

      t.boolean :isActive
      t.boolean :isAvailable
      t.boolean :isBackOrder

      t.text :original_description

      t.float :price



      t.timestamps null: false
    end

    create_table :products_product_categories, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :product_category, index: true
    end
  end


end
