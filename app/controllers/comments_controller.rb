class CommentsController < OpenReadController
  before_action :set_comment, only: %i[update destroy]

  # GET /jokes/1
  def show
    render json: Score.find(params[:id])
  end

  # POST /jokes
  def create
    @comment = Comment.new(comment_params)
    @comment.user = current_user
    if @comment.save
      render json: @comment, status: :created
    else
      render json: @comment.errors, status: :unprocessable_entity
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
    def set_comment
      @comment = current_user.comments.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:user_id, :text, :game_id)
    end
end
