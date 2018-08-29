class QuizAnswersController < ApplicationController
  before_action :authenticate_user
  before_action :set_quiz_answer, only: [:show, :update, :destroy]

  # GET /quiz_answers
  def index
    @quiz_answers = QuizAnswer.all

    render json: @quiz_answers
  end

  # GET /quiz_answers/1
  def show
    render json: @quiz_answer
  end

  # POST /quiz_answers
  def create
    @quiz_answer = QuizAnswer.new(quiz_answer_params)

    if @quiz_answer.save
      render json: @quiz_answer, status: :created, location: @quiz_answer
    else
      render json: @quiz_answer.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /quiz_answers/1
  def update
    if @quiz_answer.update(quiz_answer_params)
      render json: @quiz_answer
    else
      render json: @quiz_answer.errors, status: :unprocessable_entity
    end
  end

  # DELETE /quiz_answers/1
  def destroy
    @quiz_answer.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quiz_answer
      @quiz_answer = QuizAnswer.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def quiz_answer_params
      params.require(:quiz_answer).permit(:quiz_question_id, :quiz_id, :answer, :is_correct)
    end
end
