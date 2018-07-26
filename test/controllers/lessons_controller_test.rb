require 'test_helper'

class LessonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson = lessons(:one)
  end

  test "should get index" do
    get lessons_url, as: :json
    assert_response :success
  end

  test "should create lesson" do
    assert_difference('Lesson.count') do
      post lessons_url, params: { lesson: { author_id: @lesson.author_id, comment_ids: @lesson.comment_ids, cont_trans_sentence_to_eng_ids: @lesson.cont_trans_sentence_to_eng_ids, content_text_ids: @lesson.content_text_ids, course_section_id: @lesson.course_section_id, duration: @lesson.duration, name: @lesson.name, preview: @lesson.preview } }, as: :json
    end

    assert_response 201
  end

  test "should show lesson" do
    get lesson_url(@lesson), as: :json
    assert_response :success
  end

  test "should update lesson" do
    patch lesson_url(@lesson), params: { lesson: { author_id: @lesson.author_id, comment_ids: @lesson.comment_ids, cont_trans_sentence_to_eng_ids: @lesson.cont_trans_sentence_to_eng_ids, content_text_ids: @lesson.content_text_ids, course_section_id: @lesson.course_section_id, duration: @lesson.duration, name: @lesson.name, preview: @lesson.preview } }, as: :json
    assert_response 200
  end

  test "should destroy lesson" do
    assert_difference('Lesson.count', -1) do
      delete lesson_url(@lesson), as: :json
    end

    assert_response 204
  end
end
