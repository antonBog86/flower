class CategoriesController < ApplicationController
  def index
    @categories = Category.parents.all
  end

  def show
    @subcategories =
    @category = Category.find(params[:id])
  end
end
