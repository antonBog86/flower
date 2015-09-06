class Plant < ActiveRecord::Base
  include SeoAttributes

  belongs_to  :category
  has_many    :images, dependent: :destroy
  has_many    :ordered_plants
  has_many    :orders, through: :ordered_plans

  # self.per_page = 10
end
