require 'test_helper'

class CourseCategoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_category = course_categories(:one)
  end

  test "should get index" do
    get course_categories_url, as: :json
    assert_response :success
  end

  test "should create course_category" do
    assert_difference('CourseCategory.count') do
      post course_categories_url, params: { course_category: { course_ids: @course_category.course_ids } }, as: :json
    end

    assert_response 201
  end

  test "should show course_category" do
    get course_category_url(@course_category), as: :json
    assert_response :success
  end

  test "should update course_category" do
    patch course_category_url(@course_category), params: { course_category: { course_ids: @course_category.course_ids } }, as: :json
    assert_response 200
  end

  test "should destroy course_category" do
    assert_difference('CourseCategory.count', -1) do
      delete course_category_url(@course_category), as: :json
    end

    assert_response 204
  end
end
