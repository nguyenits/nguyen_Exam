class UserController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new]
  before_action :set_user, only: %i[ show edit update destroy update_password ]
    def index
      @userforadmin = User.order(:id)
    end
    def new
 
    end
    def show  
      @userforadmin = User.order(:id)
    end 
   
    def edit  
     
    end

   
    
    # PATCH/PUT /questions/1 or /questions/1.json
    def update
      @user = User.find(params[:user][:id])
      @user.password = params[:user][:password]
      if @user.save!
        Notifier.admin_password_change(@user).deliver
        flash[:success] = "Password Changed!"
        redirect_to edit_admin_user_path(@user)
      else
        render "edit"
      end
      end
  
    # DELETE /questions/1 or /questions/1.json
    def destroy
      @user = User.find(params[:id])
      if @user.present?
        @user.destroy
      end
      redirect_to root_url
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_user
        @user = User.find(params[:id])
      end
      # Only allow a list of trusted parameters through.
      def user_params
        params.require(:user).permit(:username, :password, :role)
      end
  end
  