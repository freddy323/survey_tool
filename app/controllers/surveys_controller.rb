class SurveysController < ApplicationController
  def index
    @surveys = Survey.all.includes(:responses)
  end

  def show
    @survey = Survey.find(params[:id])
    @yes_count = @survey.responses.where(answer: true).count
    @no_count = @survey.responses.where(answer: false).count
    @total_responses = @yes_count + @no_count
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)

    if @survey.save
      redirect_to surveys_path, notice: "Survey created successfully!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def record_response
    @survey = Survey.find(params[:id])
    answer = params[:answer] == "yes"

    @survey.responses.create(answer: answer)

    redirect_to survey_path(@survey), notice: "Response recorded!"
  end

  private

  def survey_params
    params.require(:survey).permit(:question)
  end
end
