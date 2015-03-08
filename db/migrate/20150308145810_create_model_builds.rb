class CreateModelBuilds < ActiveRecord::Migration
  def change
    create_table :model_builds do |t|
      t.text :name
      t.float :mark
      t.float :advancement

      t.string :category

      t.timestamps null: false
    end

    create_table :model_builds_products, id: false do |t|
      t.belongs_to :product, index: true
      t.belongs_to :model_builds, index: true
    end
  end
end
