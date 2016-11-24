class CreateProvinces < ActiveRecord::Migration[5.0]
  def change
    create_table :provinces do |t|
      t.string :name
      t.decimal :pst, precision: 10, scale: 2
      t.decimal :gst, precision: 10, scale: 2
      t.decimal :hst, precision: 10, scale: 2

      t.timestamps
    end
  end
end
