ActiveAdmin.register Plant do
  def controller.list_of_allowed_attr
    [:name, :category_id, :science_name, :leaf_collor, :blossom_collor, 
                :blossom_start, :blossom_duration, :description, :seo_title,
                :seo_keywords, :seo_description]
  end

  permit_params *controller.list_of_allowed_attr

  filter :name
  filter :category
  filter :blossom_start    

end
