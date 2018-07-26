require 'test_helper'

class QuizAnswersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @quiz_answer = quiz_answers(:one)
  end

  test "should get index" do
    get quiz_answers_url, as: :json
    assert_response :success
  end

  test "should create quiz_answer" do
    assert_difference('QuizAnswer.count') do
      post quiz_answers_url, params: { quiz_answer: { answer: @quiz_answer.answer, is_correct: @quiz_answer.is_correct, quiz_id: @quiz_answer.quiz_id, quiz_question_id: @quiz_answer.quiz_question_id } }, as: :json
    end

    assert_response 201
  end

  test "should show quiz_answer" do
    get quiz_answer_url(@quiz_answer), as: :json
    assert_response :success
  end

  test "should update quiz_answer" do
    patch quiz_answer_url(@quiz_answer), params: { quiz_answer: { answer: @quiz_answer.answer, is_correct: @quiz_answer.is_correct, quiz_id: @quiz_answer.quiz_id, quiz_question_id: @quiz_answer.quiz_question_id } }, as: :json
    assert_response 200
  end

  test "should destroy quiz_answer" do
    assert_difference('QuizAnswer.count', -1) do
      delete quiz_answer_url(@quiz_answer), as: :json
    end

    assert_response 204
  end
end
