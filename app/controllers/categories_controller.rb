class CategoriesController < ApplicationController
  def index
    @categories = Category.primary.all
  end

  def show
    @category = Category.find(params[:id])
    @subcategories = @category.children
  end
end
