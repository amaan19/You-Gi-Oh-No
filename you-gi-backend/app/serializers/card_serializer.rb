class CardSerializer < ActiveModel::Serializer

  attributes :id, :deck_id, :name, :desc, :atk, :def, :group, :level, :race, :element, :image_url   

end