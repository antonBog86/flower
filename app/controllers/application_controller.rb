class ApplicationController < ActionController::Base
  protect_from_forgery

  def init
    if session[:categories].nil? or session[:subcategories].nil?
      session[:categories]    = Category.all
      session[:subcategories] = Subcategory.all    
    end
  end

end
