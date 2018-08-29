class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_lesson, only: [:show, :update, :destroy]

  # GET /lessons
  def index
    @lessons = Lesson.all

    render json: @lessons
  end

  # GET /lessons/1
  def show
    render json: @lesson
  end

  # POST /lessons
  def create
    @lesson = Lesson.new(lesson_params)

    if @lesson.save
      render json: @lesson, status: :created, location: @lesson
    else
      render json: @lesson.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /lessons/1
  def update
    if @lesson.update(lesson_params)
      render json: @lesson
    else
      render json: @lesson.errors, status: :unprocessable_entity
    end
  end

  # DELETE /lessons/1
  def destroy
    # Send all the course with its sections back to the user
    @course = @lesson.course_section.course

    @lesson.destroy

    render json: @course
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lesson
      @lesson = Lesson.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def lesson_params
      params.require(:lesson).permit(:course_section_id, :name, :author_id, :duration, :preview, :comment_ids,
        :content_text_ids, :cont_trans_sentence_to_eng_ids)
    end
end
