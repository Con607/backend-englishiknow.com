class WordExamplesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_word_example, only: [:show, :update, :destroy]

  # GET /word_examples
  def index
    @word_examples = WordExample.all

    render json: @word_examples
  end

  # GET /word_examples/1
  def show
    render json: @word_example
  end

  # POST /word_examples
  def create
    @word_example = WordExample.new(word_example_params)

    if @word_example.save
      render json: @word_example, status: :created, location: @word_example
    else
      render json: @word_example.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /word_examples/1
  def update
    if @word_example.update(word_example_params)
      render json: @word_example
    else
      render json: @word_example.errors, status: :unprocessable_entity
    end
  end

  # DELETE /word_examples/1
  def destroy
    @word_example.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_word_example
      @word_example = WordExample.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def word_example_params
      params.require(:word_example).permit(:sentence, :fast_video, :slow_video, :word_list_id)
    end
end
