class AdminController < ApplicationController
	before_filter :authenticate_admin!
  before_filter :init
  layout 'application'

  def index
    
  end
end
