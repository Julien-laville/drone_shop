class CreateProductCategories < ActiveRecord::Migration
  def change
    create_table :product_categories do |t|
      t.text :name


      t.timestamps null: false
    end
  end
end
