class Image < ActiveRecord::Base
  belongs_to :plant
  belongs_to :category

  mount_uploader :path, ImageUploader
  # self.per_page = 10
end
