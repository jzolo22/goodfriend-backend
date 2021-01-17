class Api::V1::FollowSerializer < ActiveModel::Serializer
  attributes :id, :follower_id, :followee_id, :followee

    def followee
      {
      id: self.object.followee.id,
      first_name: self.object.followee.first_name,
      last_name: self.object.followee.last_name,
       }
    end
end
