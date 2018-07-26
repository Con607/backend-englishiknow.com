class CourseCategoriesController < ApplicationController
  before_action :set_course_category, only: [:show, :update, :destroy]

  # GET /course_categories
  def index
    @course_categories = CourseCategory.all

    render json: @course_categories
  end

  # GET /course_categories/1
  def show
    render json: @course_category
  end

  # POST /course_categories
  def create
    @course_category = CourseCategory.new(course_category_params)

    if @course_category.save
      render json: @course_category, status: :created, location: @course_category
    else
      render json: @course_category.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /course_categories/1
  def update
    if @course_category.update(course_category_params)
      render json: @course_category
    else
      render json: @course_category.errors, status: :unprocessable_entity
    end
  end

  # DELETE /course_categories/1
  def destroy
    @course_category.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_course_category
      @course_category = CourseCategory.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def course_category_params
      params.require(:course_category).permit(:course_ids)
    end
end
