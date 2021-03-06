class GamesController < ProtectedController
  include ActionController::Live

  skip_before_action :authenticate, only: :watch
  before_action :query_string_authenticate, only: :watch

  private

  def query_string_authenticate
    token = params[:token]
    @current_user = AUTH_PROC.call(token)
    head :unauthorized unless current_user
  end

  def save(game, status = :ok)
    if game.save
      render json: game, status: status
    else
      render json: { errors: game.errors }, status: :bad_request
    end
  end

  public

  def index
    render json:
      if (over = params[:over])
        Game.where(over: over)
      else
        Game.all
      end
  end

  def show
    render json: Game.find(params[:id])
  end

  def create
    game = Game.new(user: current_user)
    save game, :created
  end

  def destroy
    @game = Game.find(params[:id])
    @game.destroy!
    render json: @game
  end

  def update
    if (updates = params[:game]) && !updates.empty?
      game = Game.find(params[:id])
      if (points = updates[:points])
        game.points = points
      end
      if (over = updates[:over])
        game.over = over
      end
      if (comment = updates[:comment])
        game.comment = comment
      end
      save game
    end
  end
end
