class ApplicationController < ActionController::Base
  private

  def admin_only
    unless current_spree_user && current_spree_user.admin?
      redirect_to root_path
      flash[:notice] = "Sorry, you have to be an administrator to see that page!"
    end
  end

end
