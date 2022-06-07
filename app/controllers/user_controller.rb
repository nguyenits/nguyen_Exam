class UserController < ApplicationController
  def custom_create_user
  if current_user.role == "admin"
    User.create(:email => params[:email], password => params[:password])
    redirect_to(some_path, :notice => 'sucessfully updated user.')
  else
    redirect_to(some_other_path, :notice => 'You are not authorized to do this.')
  end
end
end
