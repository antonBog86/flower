class Category < ActiveRecord::Base
  has_many :children, :foreign_key => "parent_id", :class_name => Category
  belongs_to :parent, :class_name => Category

  has_one  :image

  self.per_page = 8
end
