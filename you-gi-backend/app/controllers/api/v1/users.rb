module API  
  module V1
    class Users < Grape::API
      include API::V1::Defaults

      resource :users do
        desc "Return all users"
        get "", root: :users do
          users = User.all
          #present users, with: API::V1::Entities::User
        end

        desc "Return a user"
        params do
          requires :id, type: String, desc: "ID of the 
            user"
        end
        get ":id", root: "user" do
          user = User.where(id: permitted_params[:id]).first!
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
