require 'test_helper'

class ContTransSentenceEnglishesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cont_trans_sentence_english = cont_trans_sentence_englishes(:one)
  end

  test "should get index" do
    get cont_trans_sentence_englishes_url, as: :json
    assert_response :success
  end

  test "should create cont_trans_sentence_english" do
    assert_difference('ContTransSentenceEnglish.count') do
      post cont_trans_sentence_englishes_url, params: { cont_trans_sentence_english: { answer: @cont_trans_sentence_english.answer, lesson_id: @cont_trans_sentence_english.lesson_id, sentence: @cont_trans_sentence_english.sentence, translation: @cont_trans_sentence_english.translation } }, as: :json
    end

    assert_response 201
  end

  test "should show cont_trans_sentence_english" do
    get cont_trans_sentence_english_url(@cont_trans_sentence_english), as: :json
    assert_response :success
  end

  test "should update cont_trans_sentence_english" do
    patch cont_trans_sentence_english_url(@cont_trans_sentence_english), params: { cont_trans_sentence_english: { answer: @cont_trans_sentence_english.answer, lesson_id: @cont_trans_sentence_english.lesson_id, sentence: @cont_trans_sentence_english.sentence, translation: @cont_trans_sentence_english.translation } }, as: :json
    assert_response 200
  end

  test "should destroy cont_trans_sentence_english" do
    assert_difference('ContTransSentenceEnglish.count', -1) do
      delete cont_trans_sentence_english_url(@cont_trans_sentence_english), as: :json
    end

    assert_response 204
  end
end
