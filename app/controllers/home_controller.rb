class HomeController < ApplicationController
  def show
    @ads = Ad.all
  end
  def userad
    @ads = Ad.where(user: current_user)
  end
  def otherad
    @ads = Ad.where.not(user: current_user)
  end
end
