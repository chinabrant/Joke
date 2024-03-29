class JokesController < ApplicationController
  before_action :set_joke, only: [:show, :edit, :update, :destroy]

  # GET /jokes
  # GET /jokes.json
  def index
    @jokes = Joke.all
  end

  # GET /jokes/1
  # GET /jokes/1.json
  def show
  end

  # GET /jokes/new
  def new
    @joke = Joke.new
  end

  # GET /jokes/1/edit
  def edit
  end

  # POST /jokes
  # POST /jokes.json
  def create
    @joke = Joke.new(joke_params)

    respond_to do |format|
      if @joke.save
        format.html { redirect_to @joke, notice: 'Joke was successfully created.' }
        format.json { render action: 'show', status: :created, location: @joke }
      else
        format.html { render action: 'new' }
        format.json { render json: @joke.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /jokes/1
  # PATCH/PUT /jokes/1.json
  def update
    respond_to do |format|
      if @joke.update(joke_params)
        format.html { redirect_to @joke, notice: 'Joke was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @joke.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /jokes/1
  # DELETE /jokes/1.json
  def destroy
    @joke.destroy
    respond_to do |format|
      format.html { redirect_to jokes_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_joke
      @joke = Joke.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def joke_params
      params.require(:joke).permit(:title, :content, :time, :category)
    end
end
