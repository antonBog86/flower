class Plant < ActiveRecord::Base
  belongs_to  :subcategory
  has_many    :images

  self.per_page = 10
end
