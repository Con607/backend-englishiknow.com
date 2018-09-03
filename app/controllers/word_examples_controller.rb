class WordExamplesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_word_list
  before_action :set_word_example, only: [:show, :update, :destroy]

  # GET /word_examples
  def index
    @word_examples = @word_list.word_examples

    render json: @word_examples
  end

  # GET /word_examples/1
  def show
    render json: @word_example
  end

  # POST /word_examples
  def create
    @word_example = @word_list.word_examples.create!(word_example_params)

    if @word_example.save
      render json: @word_example, status: :created
    else
      render json: @word_example.errors, status: :unprocessable_entity
    end
  end

  # POST /word_examples
  def create_ssp
    @word_example = WordExample.find(params[:word_example_id])
    @word_example.sentence_fast_video = params[:sentence_fast_video]
    @word_example.sentence_slow_video = params[:sentence_slow_video]

    if @word_example.save
      render json: @word_example, status: :created
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
    def set_word_list
      @word_list = WordList.find(params[:word_list_id])
    end

    def set_word_example
      @word_example = @word_list.word_examples.find_by!(id: params[:id]) if @word_list
    end


    # Only allow a trusted parameter "white list" through.
    def word_example_params
      params.require(:word_example).permit(:sentence, :word_list_id)
    end
end
