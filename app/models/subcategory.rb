class Subcategory < ActiveRecord::Base
  belongs_to  :category
  has_one     :image
  has_many    :plants

  self.per_page = 10
end
