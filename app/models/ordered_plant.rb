class OrderedPlant < ActiveRecord::Base
  belongs_to :order
  belongs_to :plant

  # validates :order_id, presence: true
  validates :plant_id, presence: true
  validates :price,    presence: true, on: :update

  before_create :set_price

  private

  def set_price
    self.price = plant.price
  end
end
