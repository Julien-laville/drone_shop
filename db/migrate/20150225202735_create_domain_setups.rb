class CreateDomainSetups < ActiveRecord::Migration
  def change
    create_table :domain_setups do |t|
      t.text :name
      t.text :product_url
      t.text :product_sample_url
      t.integer :last_read_id

      t.timestamps null: false
    end
  end
end
