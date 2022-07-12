class QuestionController < ApplicationController
  def index
    @question_admin = Question.order(:id)
    id_of_question = Array.new
    param_num = params[:Num_Question]
    params_level = params[:level_Question]
    @question = Question.order("RANDOM()").limit(param_num).where(level: params_level)
    @question.each do |question|  
      id_of_question.push(question['id'].to_i)
    end
    @id_question  =  id_of_question.sort
  end
  def new
    @question = Question.new
  end
  def show  

  end
  def ScoreQuestion
    listQuestion = params[:id_of_question].tr('[]', '').split(',').map(&:to_i)
    @question = Question.where('id IN (?)', listQuestion)
  end
  def admin_indexquestion
    @pagy, @question = pagy(Question.all, items: 30)
  end
  def edit  
   
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
      params.require(:question).permit(:quetion, :a1, :a2, :a3, :a4, :ans, :role, :level)
    end
end
