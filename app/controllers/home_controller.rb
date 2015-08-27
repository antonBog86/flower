class HomeController < ApplicationController
	before_filter :init 

	def index		
		@content_data = ContentData.all.first
	end

  def change_locale
    I18n.locale = params[:locale]
    redirect_to :back
  end 
end
