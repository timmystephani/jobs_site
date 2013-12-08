class HomeController < ApplicationController
  def index
    u = User.find(1)
    sign_in(:user, u)
  end
end
