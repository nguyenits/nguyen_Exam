class TestController < ApplicationController
  def ViewallTest
    @question = Question.order(:id)
 
   end
end
    