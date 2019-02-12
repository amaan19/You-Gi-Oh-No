class GameSerializer < ActiveModel::Serializer

  attributes :id, :users, :gamestate

end