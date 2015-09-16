class PlantsController < ApplicationController
  before_action :color_variables, only: [:index, :show]
  def index
    @plants = Plant.order(:name).page(params[:page])
    include_search
  end

  def show
    @plant = Plant.find(params[:id])
  end

  def order
    session[:order] ||= []
    session[:order].push(params[:id])
  end

  private

  def color_variables
    @human_blossom_collors = Plant.uniq.pluck(:blossom_collor)
    @human_leaf_collors = Plant.uniq.pluck(:leaf_collor)
  end

  def include_search
    if params[:search]
      params[:search].each do |key, value|
        @plants = @plants.where(key => value) if ['blossom_color', 'category_id'].include?(key)
      end

      @plants = @plants.where('name LIKE ?', "#{params[:search][:name]}%") if params[:search][:name]
      @plants = @plants.where('blossom_start > ?', params[:search][:blossom_start]) if params[:search][:blossom_start]
    end
  end
end
