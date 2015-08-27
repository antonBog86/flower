class SubcategoriesController < ApplicationController
  before_filter :authenticate_admin!, :except => [:index,:show]
  before_filter :init, :except => [:create, :update, :destroy]

  def index
    @subcategories = Subcategory.paginate(:page => params[:page])
  end

  def new
    @category = Category.where(:id => params[:id]).first
    @subcategory = @category.subcategories.new
  end

  def create
    subcategory = Subcategory.new(params[:subcategory].except(:file))
    respond_to do |format|
      if params[:cancel]
        format.html  { redirect_to( subcategories_path, :notice => 'Action was canceled') }
        format.json  { render :json => {}, :status => :ok }
      elsif subcategory.save
        file = params[:subcategory][:file]
        if file
          resource = {:name => "Subcategory", :id => subcategory.id}
          error = Image.upload(file, resource)
        end

        format.html  { redirect_to( subcategories_path, 
                       :notice => error) }
        format.json  { render :json => {}, :status => :ok }
      else
        format.html  { render :action => "new" }
        format.json  { render :json => subcategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  def show
    subcategory = Subcategory.where(:id => params[:id]).first
    @plants     = subcategory.plants
    logger.debug @plants

  end

  def edit
    @subcategory = Subcategory.find(params[:id])
  end

  def update
    subcategory = Subcategory.find(params[:id])

    respond_to do |format|
      if params[:cancel]
        format.html  { redirect_to( subcategories_path, :notice => 'Action was canceled') }
        format.json  { render :json => {}, :status => :ok }
      elsif subcategory.update_attributes(params[:subcategory])
        format.html  { redirect_to( subcategories_path, :notice => 'Subcategory was successfully updated.') }
        format.json  { render :json => {}, :status => :ok }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => subcategory.errors, :status => :unprocessable_entity }
      end
    end
  end

  def destroy
    respond_to do |format|
      if Subcategory.delete(params[:id])
        format.html  { redirect_to( subcategories_path, :notice => 'Subcategory was successfully deleted.') }
        format.json  { render :json => {}, :status => :ok }
      else
        format.html  { render :action => "delete" }
        format.json  { render :json => subcategory.errors, :status => :unprocessable_entity }
      end
    end
    
  end
end

