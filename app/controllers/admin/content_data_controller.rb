class Admin::ContentDataController < ApplicationController
  before_filter :authenticate_admin!
  
  def edit
    @data = ContentData.find(1)
  end

  def update
    @data = ContentData.find(1)

    respond_to do |format|
      if params[:cancel]
        format.html  { redirect_to("/admin", :notice => 'Cancel action') }
        format.json  { render :json => {}, :status => :ok }
      elsif @data.update_attributes(params[:content_data])
        format.html  { redirect_to("/admin", :notice => 'Content data was successfully updated.') }
        format.json  { render :json => {}, :status => :ok }
      else
        format.html  { render :action => "edit" }
        format.json  { render :json => @data.errors, :status => :unprocessable_entity }
      end
    end
  end

end