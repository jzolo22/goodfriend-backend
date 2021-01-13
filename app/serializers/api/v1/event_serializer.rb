class Api::V1::EventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :date, :type, :annual, :description, :celebrator_id
end
