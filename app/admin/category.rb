ActiveAdmin.register Category do
  
  def controller.list_of_allowed_attr
    [:name, :parent_id, :seo_title, :seo_keywords, :seo_description]
  end

  permit_params *controller.list_of_allowed_attr

  filter :name
  filter :category
  filter :plant_id

  form partial: 'form'

end
