class CourseSectionsController < ApplicationController
  before_action :set_course_section, only: [:show, :update, :destroy]

  # GET /course_sections
  def index
    @course_sections = CourseSection.all

    render json: @course_sections
  end

  # GET /course_sections/1
  def show
    render json: @course_section
  end

  # POST /course_sections
  def create
    @course_section = CourseSection.new(course_section_params)

    if @course_section.save
      render json: @course_section, status: :created, location: @course_section
    else
      render json: @course_section.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /course_sections/1
  def update
    if @course_section.update(course_section_params)
      render json: @course_section
    else
      render json: @course_section.errors, status: :unprocessable_entity
    end
  end

  # DELETE /course_sections/1
  def destroy
    @course_section.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_section
      @course_section = CourseSection.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_section_params
      params.require(:course_section).permit(:course_id, :lesson_ids, :name, :quiz_id)
    end
end
