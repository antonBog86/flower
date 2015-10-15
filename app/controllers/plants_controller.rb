class PlantsController < ApplicationController
  before_action :color_variables, only: [:index, :show]
  before_action :get_plant, only: [:show, :details]

  def index
    @plants = Plant.order(:name).page(params[:page])
    include_search
  end

  def show
  end

  def order
    session[:order] ||= []
    session[:order].push(params[:id])
  end

  def details
  end

  private

  def get_plant
    @plant = Plant.find(params[:id]).decorate
  end

  def color_variables
    @human_blossom_colors = Plant.uniq.pluck(:blossom_color).map { |r| ['__________', r, style: "background-color: #{r}" ] }
    @human_leaf_colors = Plant.uniq.pluck(:leaf_color)
  end

  def include_search
    if params[:search]
      params[:search].each do |key, value|
        next if value.blank?
        @plants = @plants.where(key => value) if %w(blossom_color category_id).include?(key)
      end

      @plants = @plants.where('name LIKE ?', "#{params[:search][:name]}%") if params[:search][:name].present?
      @plants = @plants.where('MONTH(blossom_start) = ?', params[:search][:blossom_start]) if params[:search][:blossom_start].present?
    end
  end
end
