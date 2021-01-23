class Api::V1::ItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :purchased, :wishlist_id, :link

  
end
