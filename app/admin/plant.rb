ActiveAdmin.register Plant do
  permit_params :name, :category_id, :science_name, :leaf_collor, :blossom_collor, 
                :blossom_start, :blossom_duration, :description, :seo_title,
                :seo_keywords, :seo_description

  filter :name
  filter :category
  filter :blossom_start    

end
