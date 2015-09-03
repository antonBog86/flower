class Image < ActiveRecord::Base
  belongs_to :plant
  belongs_to :category

  # self.per_page = 10

  def self.upload(file, resource)
    error = nil
    uploader = resource[:name] == "Plant" ? ImagesUploader.new : ImageUploader.new

    begin
      uploader.store!(file)
    rescue StandardError => e
      error = e.to_s
    end

    unless error
      path = {:full => form_url(uploader.url)}
      if resource[:name] == "Plant"
        path.merge(:exact => form_url(uploader.exact.url),
                   :thumb => form_url(uploader.thumb.url))
      end
      name = file.original_filename

      error = Image.bind_to_(resource, name, path) ?  "All OK" : "Undefined Error"
    end
    error
  end


  private
  def self.bind_to_(resource, name, path)
    case resource[:name]
      when "Category"
        category = Category.where(:id => resource[:id]).first
        if category and category.image
          category.image.update_attributes(:name => name, :path => path[:full])
        elsif category
          category.create_image(:name => name, :path => path)
        end
      when "Subcategory"
        subcategory = Subcategory.where(:id => resource[:id]).first
        if subcategory and subcategory.image
          subcategory.image.update_attributes(:name => name, :path => path[:full])
        elsif subcategory
          subcategory.create_image(:name => name, :path => path)
        end
      when "Plant"
        plant =  Plant.where(:id => resource[:id]).first
        SIZE.each do |key, value|
          plant.images.create(:name => name, :path => path[key], :thumb => value)
        end
      else raise(NoMethodError, "No such resource")
    end
  end

  def form_url(path)
    "#{IMAGES_PATH}#{File.basename( path.to_s )}"
  end
end
