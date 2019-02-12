module API  
  module V1
    class Decks < Grape::API
      include API::V1::Defaults

      resource :decks do
        desc "Return all decks"
        get "", root: :deck do
          Deck.all
        end

        desc "Return a deck"
        params do
          requires :id, type: String, desc: "ID of the 
            deck"
        end
        get ":id", root: "deck" do
          Deck.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end  
