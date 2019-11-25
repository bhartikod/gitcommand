class HomeController < ApplicationController
  before_action :authenticate_user!
#   added comment
  def index
  end
end
