class Category < ActiveRecord::Base
  has_many :subcategories
  has_one  :image

  self.per_page = 8
end
