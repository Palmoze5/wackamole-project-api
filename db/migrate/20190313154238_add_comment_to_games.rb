class AddCommentToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :comment, :string
  end
end
