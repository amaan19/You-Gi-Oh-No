module API  
  module V1
    class Base < Grape::API
      mount API::V1::Cards
      mount API::V1::Users
      mount API::V1::Decks
      mount API::V1::Games
      # mount API::V1::AnotherResource
    end
  end
end  
