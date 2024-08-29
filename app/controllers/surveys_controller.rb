class SurveysController < ApplicationController
  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    @survey.user_id = current_user.id
    @survey.save
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  private

  def survey_params
    params.require(:survey).permit(:title)
  end
end
