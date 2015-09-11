ActiveAdmin.register Image do
  permit_params :name, :path, :category_id, :plant_id, :weight

  filter :name
  filter :category
  filter :plant_id

  form do |f|
    f.inputs do      
      f.inputs "Изображение", :multipart => true do 
        f.input :path, :as => :file, :hint => image_tag(f.object.path.url) 
        f.input :path_cache, :as => :hidden 
      end
      f.input :name
      f.input :category_id, :input_html => { :value => f.object.category_id || params[:category_id] }
      f.input :plant_id, :input_html => { :value => f.object.plant_id || params[:plant_id] }
      f.input :weight
    end

    f.actions  
  end
end
