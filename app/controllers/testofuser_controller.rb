class TestofuserController < ApplicationController
  before_action :set_testofuser, only: %i[ show edit update destroy ]
    def index
      @testofuser = Testofuser.where(idofuser: current_user.id)
      @testofuserforadmin = Testofuser.order('score::float DESC')
      @User = User.order(:id)
    end
    def new
 
    end

    def search
      if (current_user.id ==1)
        @testofuser = Testofuser.where("topic LIKE? ","%"+params[:q]+"%") 
        @user = User.where("username LIKE?","%"+params[:q]+"%") 
      else
        @testofuser = Testofuser.where("topic LIKE? and idofuser LIKE?","%"+params[:q]+"%","%"+current_user.id.to_s+"%") 
      end
    end

    def show  
      @question = Question.order(:id)
    end 
 
    def edit  
     
    end
  
    def create
      @testofuser = Testofuser.new(question_params) 
      respond_to do |format|
        if @testofuser.save
          format.html { redirect_to testofuser_url(@testofuser), notice: "testofuser was successfully created." }
          format.json { render :show, status: :created, location: @testofuser }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @testofuser.errors, status: :unprocessable_entity }
        end
      end
    end
    
    # PATCH/PUT /questions/1 or /questions/1.json
    def update
      respond_to do |format|
        if @testofuser.update(testofuser_params)
          format.html { redirect_to question_url(@testofuser), notice: "testofuser was successfully updated." }
          format.json { render :show, status: :ok, location: @testofuser }
          puts "thanh cong"
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @testofuser.errors, status: :unprocessable_entity }
          end
        end 
      end
  
    # DELETE /questions/1 or /questions/1.json
    def destroy
      @testofuser = Testofuser.find(params[:id])
      if @testofuser.present?
        @testofuser.destroy
      end
      redirect_to root_url
    end
  
    private
      # Use callbacks to share common setup or constraints between actions.
      def set_testofuser
        @testofuser = Testofuser.find(params[:id])
      end
      # Only allow a list of trusted parameters through.
      def question_params
        params.require(:testofuser).permit(:id,:idofuser, :test, :score,:topic)
      end
  end
  