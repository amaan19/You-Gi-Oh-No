class UserSerializer < ActiveModel::Serializer

  attributes :id, :name, :deck,
  
  def deck
    {deck_name: self.object.deck.name,
    deck_id: self.object.deck.id,
    cards: self.object.deck.cards.map do |card|
      {
        name: card.name,
        desc: card.desc,
        atk: card.atk,
        def: card.def,
        group: card.group,
        level: card.level,
        race: card.race,
        element: card.element,
        image_url: card.image_url

      }
    end
  }
  end



end