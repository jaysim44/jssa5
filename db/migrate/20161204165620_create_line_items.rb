class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.references :product, foreign_key: true
      t.references :order, foreign_key: true
      t.decimal :unit_price, precision: 10, scale: 2
      t.integer :quantity
      t.decimal :total_price, precision: 10, scale: 2

      t.timestamps
    end
  end
end
