module API  
  module V1
    class Games < Grape::API
      include API::V1::Defaults

      resource :games do
        desc "Return all games"
        get "", root: :users do
          games = Game.all
          #present users, with: API::V1::Entities::User
        end

        desc "Return a game"
        params do
          requires :id, type: String, desc: "ID of the 
            game"
        end
        get ":id", root: "game" do
          game = Games.where(id: permitted_params[:id]).first!
          #deck = user.deck
          #present :cards, with: API::V1::Entities::Card
        end
        post do
          user = User.new(name: params[:name])
          user.deck = Deck.find(params[:deck_id])
          user.save
        end
      end
    end
  end
end  
