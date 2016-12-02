ActiveAdmin.register Product do
  permit_params :name, :description, :price, :stock, :size, :category_id, :photo
  form(html: { multipart: true }) do |f|

  f.inputs 'Product' do
    f.input :name
    f.input :description
    f.input :price
    f.input :stock
    f.input :size
    f.input :category_id, selected: '1', as: :select, collection: Category.all.map { |u| [u.name.to_s, u.id] }
    f.input :photo, :as => :formtastic_attachinary, :hint => image_tag(f.object.photo.url(:thumbnail))
  end
    f.actions
  end
end
