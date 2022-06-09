class QuestionController < ApplicationController
before_action :set_question, only: %i[ show edit update destroy ]
before_action :authenticate_user!, only: [:index, :new]

  def index

    @question = Question.order(:id)
  end
  def new
    @question = Question.new
  end
  def show  
  end
  def ScoreQuestion

   @question = Question.order(:id)
  end


  def edit  
    @question = Question.all
  end

  def create
    @question = Question.new(question_params) 
    respond_to do |format|
      if @question.save
        format.html { redirect_to question_url(@question), notice: "Question was successfully created." }
        format.json { render :show, status: :created, location: @question }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /questions/1 or /questions/1.json
  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to question_url(@question), notice: "Question was successfully updated." }
        format.json { render :show, status: :ok, location: @question }
        puts "thanh cong"
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @question.errors, status: :unprocessable_entity }
        end
      end 
    end

  # DELETE /questions/1 or /questions/1.json
  def destroy
    @question = Question.find(params[:id])
    if @question.present?
      @question.destroy
    end
    redirect_to root_url
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end
    # Only allow a list of trusted parameters through.
    def question_params
      params.require(:question).permit(:quetion, :a1, :a2, :a3, :a4, :ans)
    end
end
