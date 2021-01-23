class Api::V1::ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :purchased, :wishlist_id, :link, :image_link

  
end
