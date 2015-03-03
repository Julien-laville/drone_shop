class CreateXpaths < ActiveRecord::Migration
  def change
    create_table :xpaths do |t|
      t.belongs_to :domain_setup, index: true
      t.text :path
      t.text :clean_rule

      t.string :column_name

      t.timestamps null: false
    end
  end
end
