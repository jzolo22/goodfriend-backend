class Api::V1::UserSerializer < ActiveModel::Serializer
  include Rails.application.routes.url_helpers
  attributes :id, :username, :first_name, :last_name, :birthday, :address, :partner_name, :partner_birthday, :venmo_handle, :flowers, :own_events, :followed_events, :your_followers, :you_follow, :profile_picture, :wishlist_items, :wishlist

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

  def wishlist_items
    if self.object.wishlist 
      self.object.wishlist.items
    end
  end
  
  def profile_picture
    if object.profile_picture.attached?
      {
        url: rails_blob_url(object.profile_picture),
        signed_id: object.profile_picture.signed_id
      }
    end
  end

  
end
