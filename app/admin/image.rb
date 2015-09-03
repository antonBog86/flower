ActiveAdmin.register Image do
  permit_params :name, :category_id, :plant_id, :weight, :version

  filter :name
  filter :category
  filter :plant_id

end
