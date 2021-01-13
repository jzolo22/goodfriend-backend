class Api::V1::UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :birthday, :address, :partner_name, :partner_birthday, :venmo_handle, :flowers, :own_events, :followed_events, :your_followers, :you_follow

  def own_events 
    self.object.events
  end

  def followed_events
    self.object.followed_users.map {|user| Api::V1::User.find(user.followee_id).events}
  end

  def your_followers
    self.object.following_users.map {|user| Api::V1::User.find(user.follower_id)}
  end

  def you_follow 
    self.object.followed_users.map {|user| Api::V1::User.find(user.followee_id)}
  end

end
