class ApplicationController < ActionController::Base
  before_filter :handle_mobile
  protect_from_forgery

  def handle_mobile
    request.format = :mobile
  end
end
