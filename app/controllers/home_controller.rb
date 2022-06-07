class HomeController < ApplicationController
  def index
    before_action :authenticate_users
  
end
def show
  @User = User.order(:id)
end
def custom_create_user
  if current_user.role == "admin"
    User.create(:username => params[:username], password => params[:password])
    redirect_to(some_path, :notice => 'sucessfully updated user.')
  else
    redirect_to(some_other_path, :notice => 'You are not authorized to do this.')
  end
end
def initialize(User)
  can :manage, :all if user.role == "admin"
end 
end
