require 'test_helper'

class CourseSectionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course_section = course_sections(:one)
  end

  test "should get index" do
    get course_sections_url, as: :json
    assert_response :success
  end

  test "should create course_section" do
    assert_difference('CourseSection.count') do
      post course_sections_url, params: { course_section: { course_id: @course_section.course_id, lesson_ids: @course_section.lesson_ids, name: @course_section.name } }, as: :json
    end

    assert_response 201
  end

  test "should show course_section" do
    get course_section_url(@course_section), as: :json
    assert_response :success
  end

  test "should update course_section" do
    patch course_section_url(@course_section), params: { course_section: { course_id: @course_section.course_id, lesson_ids: @course_section.lesson_ids, name: @course_section.name } }, as: :json
    assert_response 200
  end

  test "should destroy course_section" do
    assert_difference('CourseSection.count', -1) do
      delete course_section_url(@course_section), as: :json
    end

    assert_response 204
  end
end
