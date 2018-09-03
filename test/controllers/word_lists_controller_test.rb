require 'test_helper'

class WordListsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_list = word_lists(:one)
  end

  test "should get index" do
    get word_lists_url, as: :json
    assert_response :success
  end

  test "should create word_list" do
    assert_difference('WordList.count') do
      post word_lists_url, params: { word_list: { fast_video: @word_list.fast_video, slow_video: @word_list.slow_video, word: @word_list.word, word_example_ids: @word_list.word_example_ids } }, as: :json
    end

    assert_response 201
  end

  test "should show word_list" do
    get word_list_url(@word_list), as: :json
    assert_response :success
  end

  test "should update word_list" do
    patch word_list_url(@word_list), params: { word_list: { fast_video: @word_list.fast_video, slow_video: @word_list.slow_video, word: @word_list.word, word_example_ids: @word_list.word_example_ids } }, as: :json
    assert_response 200
  end

  test "should destroy word_list" do
    assert_difference('WordList.count', -1) do
      delete word_list_url(@word_list), as: :json
    end

    assert_response 204
  end
end
