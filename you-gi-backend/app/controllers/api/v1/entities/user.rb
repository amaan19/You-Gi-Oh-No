module API
    module V1
      module Entities
        class User < Grape::Entity
          include ActiveModel::Serialization
          expose :id       
          expose :name
      end
    end
  end
end

