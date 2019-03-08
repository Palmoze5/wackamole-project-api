class ScoresController < OpenReadController
  before_action :set_score, only: %i[update destroy]

  # GET /jokes
  def index
    @scores = Score.all

    render json: @scores
  end

  # GET /jokes/1
  def show
    render json: Score.find(params[:id])
  end

  # POST /jokes
  def create
    @score = current_user.scores.build(score_params)

    if @score.save
      render json: @score, status: :created
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jokes/1
  def update
    if @score.update(score_params)
      render json: @score
    else
      render json: @score.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jokes/1
  def destroy
    @score.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_score
      @score = current_user.scores.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def score_params
      params.require(:score).permit(:number, :user_id)
    end
end
