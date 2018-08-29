class ContTransSentenceSpanishesController < ApplicationController
  before_action :authenticate_user
  before_action :set_cont_trans_sentence_spanish, only: [:show, :update, :destroy]

  # GET /cont_trans_sentence_spanishes
  def index
    @cont_trans_sentence_spanishes = ContTransSentenceSpanish.all

    render json: @cont_trans_sentence_spanishes
  end

  # GET /cont_trans_sentence_spanishes/1
  def show
    render json: @cont_trans_sentence_spanish
  end

  # POST /cont_trans_sentence_spanishes
  def create
    @cont_trans_sentence_spanish = ContTransSentenceSpanish.new(cont_trans_sentence_spanish_params)

    if @cont_trans_sentence_spanish.save
      # Return the complete lesson to update the view
      @lesson = @cont_trans_sentence_spanish.lesson

      render json: @lesson, status: :created, location: @cont_trans_sentence_spanish
    else
      render json: @cont_trans_sentence_spanish.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cont_trans_sentence_spanishes/1
  def update
    if @cont_trans_sentence_spanish.update(cont_trans_sentence_spanish_params)
      render json: @cont_trans_sentence_spanish
    else
      render json: @cont_trans_sentence_spanish.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cont_trans_sentence_spanishes/1
  def destroy
    # Return the complete lesson to update the view
    @lesson = @cont_trans_sentence_spanish.lesson

    @cont_trans_sentence_spanish.destroy

    render json: @lesson
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cont_trans_sentence_spanish
      @cont_trans_sentence_spanish = ContTransSentenceSpanish.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def cont_trans_sentence_spanish_params
      params.require(:cont_trans_sentence_spanish).permit(:name, :sentence, :translation, :answer, :lesson_id)
    end
end
