ActiveAdmin.register Product do
  permit_params :name, :description, :price, :stock, :size, :category_id
end
