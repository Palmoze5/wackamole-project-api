class GameSerializer < ActiveModel::Serializer
  attributes :id, :points, :over, :comment

  belongs_to :user
end
