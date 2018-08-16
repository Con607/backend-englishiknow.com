require 'test_helper'

class ContTransSentenceSpanishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cont_trans_sentence_spanish = cont_trans_sentence_spanishes(:one)
  end

  test "should get index" do
    get cont_trans_sentence_spanishes_url, as: :json
    assert_response :success
  end

  test "should create cont_trans_sentence_spanish" do
    assert_difference('ContTransSentenceSpanish.count') do
      post cont_trans_sentence_spanishes_url, params: { cont_trans_sentence_spanish: { answer: @cont_trans_sentence_spanish.answer, lesson_id: @cont_trans_sentence_spanish.lesson_id, name: @cont_trans_sentence_spanish.name, sentence: @cont_trans_sentence_spanish.sentence, translation: @cont_trans_sentence_spanish.translation } }, as: :json
    end

    assert_response 201
  end

  test "should show cont_trans_sentence_spanish" do
    get cont_trans_sentence_spanish_url(@cont_trans_sentence_spanish), as: :json
    assert_response :success
  end

  test "should update cont_trans_sentence_spanish" do
    patch cont_trans_sentence_spanish_url(@cont_trans_sentence_spanish), params: { cont_trans_sentence_spanish: { answer: @cont_trans_sentence_spanish.answer, lesson_id: @cont_trans_sentence_spanish.lesson_id, name: @cont_trans_sentence_spanish.name, sentence: @cont_trans_sentence_spanish.sentence, translation: @cont_trans_sentence_spanish.translation } }, as: :json
    assert_response 200
  end

  test "should destroy cont_trans_sentence_spanish" do
    assert_difference('ContTransSentenceSpanish.count', -1) do
      delete cont_trans_sentence_spanish_url(@cont_trans_sentence_spanish), as: :json
    end

    assert_response 204
  end
end
