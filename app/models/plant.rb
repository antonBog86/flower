class Plant < ActiveRecord::Base
  include SeoAttributes

  belongs_to  :category
  has_many    :images, dependent: :destroy
  has_many    :ordered_plants
  has_many    :orders, through: :ordered_plans

  def main_image
    images.order(:weight).first
  end

  paginates_per 10
end
