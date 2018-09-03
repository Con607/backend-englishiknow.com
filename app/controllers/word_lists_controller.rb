class WordListsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_word_list, only: [:show, :update, :destroy]

  # GET /word_lists
  def index
    @word_lists = WordList.all

    render json: @word_lists
  end

  # GET /word_lists/1
  def show
    render json: @word_list
  end

  # POST /word_lists
  def create
    @word_list = WordList.new(word_list_params)

    if @word_list.save
      render json: @word_list, status: :created, location: @word_list
    else
      render json: @word_list.errors, status: :unprocessable_entity
    end
  end

  # POST /word_lists
  def create_wsp
    @word_list = WordList.find(params[:word_list_id])
    @word_list.word_fast_video = params[:word_fast_video]

    if @word_list.save
      render json: @word_list, status: :created, location: @word_list
    else
      render json: @word_list.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /word_lists/1
  def update
    if @word_list.update(word_list_params)
      render json: @word_list
    else
      render json: @word_list.errors, status: :unprocessable_entity
    end
  end

  # DELETE /word_lists/1
  def destroy
    @word_list.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_list
      @word_list = WordList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def word_list_params
      params.require(:word_list).permit(:word, :fast_video, :slow_video, :word_fast_video, :word_example_ids)
    end
end
