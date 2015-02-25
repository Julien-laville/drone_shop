class CreateProductComments < ActiveRecord::Migration
  def change
    create_table :product_comments do |t|
      t.integer :grade
      t.text :text
      t.belongs_to :user, index: true
      t.timestamps null: false
    end
  end
end
