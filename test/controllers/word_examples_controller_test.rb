require 'test_helper'

class WordExamplesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @word_example = word_examples(:one)
  end

  test "should get index" do
    get word_examples_url, as: :json
    assert_response :success
  end

  test "should create word_example" do
    assert_difference('WordExample.count') do
      post word_examples_url, params: { word_example: { fast_video: @word_example.fast_video, sentence: @word_example.sentence, slow_video: @word_example.slow_video, word_list_id: @word_example.word_list_id } }, as: :json
    end

    assert_response 201
  end

  test "should show word_example" do
    get word_example_url(@word_example), as: :json
    assert_response :success
  end

  test "should update word_example" do
    patch word_example_url(@word_example), params: { word_example: { fast_video: @word_example.fast_video, sentence: @word_example.sentence, slow_video: @word_example.slow_video, word_list_id: @word_example.word_list_id } }, as: :json
    assert_response 200
  end

  test "should destroy word_example" do
    assert_difference('WordExample.count', -1) do
      delete word_example_url(@word_example), as: :json
    end

    assert_response 204
  end
end
