ActiveAdmin.register Category do
  permit_params :name, :parent_id, :seo_title, :seo_keywords, :seo_description

  filter :name
  filter :category
  filter :plant_id

end
