module API
    module V1
      module Entities
        class User < Grape::Entity
          #sinclude ActiveModel::Serialization
          expose :id 
          expose :deck_id 
          expose :name
          expose :desc 
          expose :atk 
          expose :def 
          expose :group 
          expose :level 
          expose :race 
          expose :element 
          expose :image_url                 
        end
      end
    end
  end

