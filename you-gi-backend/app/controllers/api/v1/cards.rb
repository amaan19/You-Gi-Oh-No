module API  
  module V1
    class Cards < Grape::API
      include API::V1::Defaults

      resource :cards do
        desc "Return all cards"
        get "", root: :cards do
          Card.all
        end

        desc "Return a card"
        params do
          requires :id, type: String, desc: "ID of the 
            card"
        end
        get ":id", root: "card" do
          Card.where(id: permitted_params[:id]).first!
        end
      end
    end
  end
end  
