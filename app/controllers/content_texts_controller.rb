class ContentTextsController < ApplicationController
  before_action :authenticate_user!
  before_action :is_admin, except: [:index, :show]
  before_action :set_content_text, only: [:show, :update, :destroy]

  # GET /content_texts
  def index
    if params[:lesson_id]
      @content_texts = ContentText.where(lesson_id: params[:lesson_id])
    else
      @content_texts = ContentText.all
    end

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
      # Return the complete lesson to update the view
      @lesson = @content_text.lesson

      render json: @lesson, status: :created, location: @content_text
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
    # Return the complete lesson to update the view
    @lesson = @content_text.lesson

    @content_text.destroy

    render json: @lesson
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_content_text
      @content_text = ContentText.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def content_text_params
      params.require(:content_text).permit(:lesson_id, :name, :content)
    end
end
