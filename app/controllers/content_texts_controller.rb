class ContentTextsController < ApplicationController
  before_action :set_content_text, only: [:show, :update, :destroy]

  # GET /content_texts
  def index
    @content_texts = ContentText.all

    render json: @content_texts
  end

  # GET /content_texts/1
  def show
    render json: @content_text
  end

  # POST /content_texts
  def create
    @content_text = ContentText.new(content_text_params)

    if @content_text.save
      render json: @content_text, status: :created, location: @content_text
    else
      render json: @content_text.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /content_texts/1
  def update
    if @content_text.update(content_text_params)
      render json: @content_text
    else
      render json: @content_text.errors, status: :unprocessable_entity
    end
  end

  # DELETE /content_texts/1
  def destroy
    @content_text.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_text
      @content_text = ContentText.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_text_params
      params.require(:content_text).permit(:lesson_id, :content)
    end
end
