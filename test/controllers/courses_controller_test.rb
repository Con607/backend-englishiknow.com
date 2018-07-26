require 'test_helper'

class CoursesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @course = courses(:one)
  end

  test "should get index" do
    get courses_url, as: :json
    assert_response :success
  end

  test "should create course" do
    assert_difference('Course.count') do
      post courses_url, params: { course: { author_id: @course.author_id, course_category_ids: @course.course_category_ids, course_payment: @course.course_payment, course_section_ids: @course.course_section_ids, description: @course.description, duration: @course.duration, feature_image: @course.feature_image, featured: @course.featured, max_students: @course.max_students, passing_mark: @course.passing_mark, price: @course.price, published: @course.published, reviewed: @course.reviewed, sale_end_date: @course.sale_end_date, sale_price: @course.sale_price, sale_start_date: @course.sale_start_date, student_id: @course.student_id, title: @course.title } }, as: :json
    end

    assert_response 201
  end

  test "should show course" do
    get course_url(@course), as: :json
    assert_response :success
  end

  test "should update course" do
    patch course_url(@course), params: { course: { author_id: @course.author_id, course_category_ids: @course.course_category_ids, course_payment: @course.course_payment, course_section_ids: @course.course_section_ids, description: @course.description, duration: @course.duration, feature_image: @course.feature_image, featured: @course.featured, max_students: @course.max_students, passing_mark: @course.passing_mark, price: @course.price, published: @course.published, reviewed: @course.reviewed, sale_end_date: @course.sale_end_date, sale_price: @course.sale_price, sale_start_date: @course.sale_start_date, student_id: @course.student_id, title: @course.title } }, as: :json
    assert_response 200
  end

  test "should destroy course" do
    assert_difference('Course.count', -1) do
      delete course_url(@course), as: :json
    end

    assert_response 204
  end
end
