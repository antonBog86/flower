class CategoriesController < ApplicationController
  before_filter :authenticate_admin!, :except => [:index,:show]
  before_filter :init, :except => [:create, :update, :destroy]

  def index
    @page_categories = Category.paginate(:page => params[:page])
  end

  def new
    @category = Category.new
  end

  def create
    category = Category.new(params[:category].except(:file))
    respond_to do |format|
      if params[:cancel]
        format.html  { redirect_to( categories_path, :notice => 'Action was canceled') }
        format.json  { render :json => {}, :status => :ok }
      elsif category.save
        file = params[:category][:file]
        if file
          resource = {:name => "Category", :id => category.id}
          error = Image.upload(file, resource)
        end

        format.html  { redirect_to( categories_path, :notice => error) }
        format.json  { render :json => {}, :status => :ok }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => category.errors, :status => :unprocessable_entity }
      end
    end
  end

  def show
    @category = Category.where(:id => params[:id]).first
    @page_subcategories = @category.subcategories.paginate(:page => params[:page])
  end

  def edit    
    @category = Category.find(params[:id])
  end

  def update
    category = Category.find(params[:id])

    respond_to do |format|
      if params[:cancel]
        format.html  { redirect_to( categories_path, :notice => 'Action was canceled') }
        format.json  { render :json => {}, :status => :ok }
      elsif category.update_attributes(params[:category])
        format.html  { redirect_to( categories_path, :notice => 'Category was successfully updated.') }
        format.json  { render :json => {}, :status => :ok }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => category.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if Category.delete(params[:id])
        format.html  { redirect_to( categories_path, :notice => 'Category was successfully deleted.') }
        format.json  { render :json => {}, :status => :ok }
      else
        format.html  { render :action => "delete" }
        format.json  { render :json => category.errors, :status => :unprocessable_entity }
      end
    end
    
  end
end

