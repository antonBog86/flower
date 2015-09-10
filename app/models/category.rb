class Category < ActiveRecord::Base
  include SeoAttributes

  has_many :children, :foreign_key => "parent_id", :class_name => Category, dependent: :destroy
  belongs_to :parent, :class_name => Category

  has_one  :image, dependent: :destroy

  validates :name, presence: true

  scope :parents, -> { where(parent_id: nil) }
  scope :subcategories, -> { where.not(parent_id: nil) }

end
