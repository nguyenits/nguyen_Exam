class HomeController < ApplicationController
  def index
    before_action :authenticate_users
  
end
def show
  @User = User.order(:id)
end


end
