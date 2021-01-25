class Api::V1::EventSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :title, :date, :annual, :description, :initials, :first_color, :second_color

  def initials
    "#{self.object.user.first_name[0]}#{self.object.user.last_name[0]}"
  end

  def first_color
    self.object.user.first_color
  end

  def second_color
    self.object.user.second_color
  end
end
