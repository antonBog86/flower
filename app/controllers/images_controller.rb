class ImagesController < ApplicationController
  before_filter :authenticate_admin!

  def upload
    file     = params[:file]
    resource = params[:resource]    
    
    error = Image.upload(file, resource)

    redirect_to( :back, :notice => error)
  end

  def destroy

  end


end
