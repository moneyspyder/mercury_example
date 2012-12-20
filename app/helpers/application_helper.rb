module ApplicationHelper

  # https://github.com/jejacks0n/mercury/wiki/Rails-Integration-Techniques
  def is_editing?
    cookies[:editing] == 'true' && can_edit?
  end

end
