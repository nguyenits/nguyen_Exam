class HomeController < ApplicationController
  def index
  end
  def show
    @User = User.order(:id)
  end
end
