require 'pry'
class RoomMessage < ApplicationRecord
  belongs_to :room, inverse_of: :room_messages

  def as_json(options)
    #binding.pry
    super(options).merge(user_avatar_url: User.find(user_id).gravatar_url)
  end
end
