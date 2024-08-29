class QuestionsController < ApplicationController
  def new
    @survey = Survey.find(params[:survey_id])
    @question = Question.new
  end

  def create
    @survey = Survey.find(params[:survey_id])
    @question = Question.new(answer_params)
    @question.survey = @survey
    @question.save
  end

  private

  def answer_params
    params.require(:question).permit(:question, :type_id, :position)
  end
end
