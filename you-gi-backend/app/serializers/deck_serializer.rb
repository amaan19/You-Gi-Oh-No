class DeckSerializer < ActiveModel::Serializer

  attributes :id, :user_id, :name, :cards

end