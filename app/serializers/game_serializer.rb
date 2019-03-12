class GameSerializer < ActiveModel::Serializer
  attributes :id, :points, :over

  belongs_to :user
  has_many :comments
end
