class UserController < ApplicationController
  before_action :set_user, only: %i[ show edit update destroy update_password ]
    def index
      if(current_user.id ==1)
        @user= User.order(:id)
        end
    end
    def new
 
    end
    def show  
      if(current_user.id ==1)
      @user= User.order(:id)
      end
    end 
   
    def edit  
    end

   
    
    # PATCH/PUT /questions/1 or /questions/1.json
    def update
      @user = User.find(params[:id])
     if @user.update(user_params)
      redirect_to root_path, notice:"password change"
     else
      render :edit
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
        params.require(:user).permit( :password,  :password_confirmation)
      end
  end
  