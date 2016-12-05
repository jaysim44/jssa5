class AddProvinceToCustomers < ActiveRecord::Migration[5.0]
  def change
    add_column :customers, :province, :string
  end
end
