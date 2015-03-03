class CreateProductConstructors < ActiveRecord::Migration
  def change
    create_table :product_constructors do |t|
      t.text :name
      t.text :website

      t.timestamps null: false
    end
  end
end
