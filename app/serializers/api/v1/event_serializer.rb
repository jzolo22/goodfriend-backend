class Api::V1::EventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :date, :annual, :description, :initials

  def initials
    "#{self.object.user.first_name[0]}#{self.object.user.last_name[0]}"
  end

end
