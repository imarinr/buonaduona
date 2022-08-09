class DashboardController < ApplicationController

  layout 'layouts/backstage'
  before_action :authenticate_user!
  
  def index
    unless current_user.admin?
      redirect_to root_path
    end
  end
end
