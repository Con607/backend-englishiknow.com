require 'test_helper'

class ContentTextsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @content_text = content_texts(:one)
  end

  test "should get index" do
    get content_texts_url, as: :json
    assert_response :success
  end

  test "should create content_text" do
    assert_difference('ContentText.count') do
      post content_texts_url, params: { content_text: { content: @content_text.content, lesson_id: @content_text.lesson_id } }, as: :json
    end

    assert_response 201
  end

  test "should show content_text" do
    get content_text_url(@content_text), as: :json
    assert_response :success
  end

  test "should update content_text" do
    patch content_text_url(@content_text), params: { content_text: { content: @content_text.content, lesson_id: @content_text.lesson_id } }, as: :json
    assert_response 200
  end

  test "should destroy content_text" do
    assert_difference('ContentText.count', -1) do
      delete content_text_url(@content_text), as: :json
    end

    assert_response 204
  end
end
