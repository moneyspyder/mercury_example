class ApplicationController < ActionController::Base
  protect_from_forgery

  # https://github.com/jejacks0n/mercury/wiki

  # https://github.com/jejacks0n/mercury/wiki/Rails-Integration-Techniques

  include Mercury::Authentication

  layout :layout_with_mercury
  helper_method :is_editing?

  private

  def layout_with_mercury
    !params[:mercury_frame] && is_editing? ? 'mercury' : 'application'
  end

  def is_editing?
    cookies[:editing] == 'true' && can_edit?
  end  

end
