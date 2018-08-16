class ContTransSentenceEnglishesController < ApplicationController
  before_action :set_cont_trans_sentence_english, only: [:show, :update, :destroy]

  # GET /cont_trans_sentence_englishes
  def index
    if params[:lesson_id]
      @cont_trans_sentence_englishes = ContTransSentenceEnglish.where(lesson_id: params[:lesson_id])
    else
      @cont_trans_sentence_englishes = ContTransSentenceEnglish.all
    end

    render json: @cont_trans_sentence_englishes
  end

  # GET /cont_trans_sentence_englishes/1
  def show
    render json: @cont_trans_sentence_english
  end

  # POST /cont_trans_sentence_englishes
  def create
    @cont_trans_sentence_english = ContTransSentenceEnglish.new(cont_trans_sentence_english_params)

    if @cont_trans_sentence_english.save
      # Return the complete lesson to update the view
      @lesson = @cont_trans_sentence_english.lesson

      render json: @lesson, status: :created, location: @cont_trans_sentence_english
    else
      render json: @cont_trans_sentence_english.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cont_trans_sentence_englishes/1
  def update
    if @cont_trans_sentence_english.update(cont_trans_sentence_english_params)
      render json: @cont_trans_sentence_english
    else
      render json: @cont_trans_sentence_english.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cont_trans_sentence_englishes/1
  def destroy
    # Return the complete lesson to update the view
    @lesson = @cont_trans_sentence_english.lesson

    @cont_trans_sentence_english.destroy

    render json: @lesson
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cont_trans_sentence_english
      @cont_trans_sentence_english = ContTransSentenceEnglish.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cont_trans_sentence_english_params
      params.require(:cont_trans_sentence_english).permit(:name, :lesson_id, :sentence, :translation, :answer)
    end
end
