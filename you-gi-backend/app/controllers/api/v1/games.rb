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
          game = Game.where(id: permitted_params[:id]).first!
          #deck = user.deck
          #present :cards, with: API::V1::Entities::Card
        end
        post do
          game = Game.new()
          user1 = User.find(params[:user_1])
          user2 = User.find(params[:user_2])
          gamestate = Gamestate.new(player1_id: user1.id, player2_id: user2.id, p1life: 4000, p2life:4000, p1deck: user1.deck.cards.ids, p2deck: user2.deck.cards.ids, p1deckid: user1.deck.id, p2deckid: user2.deck.id)
          gamestate.save
          game.gamestate = gamestate
          game.users.push(user1)
          game.users.push(user2)
          game.save
        end
        patch ":id", root: "game" do
          game = Game.find(params[:id])
          
          params["p1deck"] = JSON.parse params["p1deck"]
          byebug
          game.gamestate.update(params)
        end
        put ":id", root: "game" do
          game = Game.find(params[:id])
          params[:p1deck] = params[:p1deck].to_json
          params[:p1hand] = params[:p1hand].to_json
          params[:p1field] = params[:p1field].to_json
          params[:p2deck] = params[:p2deck].to_json
          params[:p2hand] = params[:p2hand].to_json
          params[:p2field] = params[:p2field].to_json
          # byebug
          game.gamestate.update(params)
        end
      end
    end
  end
end  
