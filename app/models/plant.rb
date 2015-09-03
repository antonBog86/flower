class Plant < ActiveRecord::Base
  belongs_to  :category
  has_many    :images

  # self.per_page = 10
end
