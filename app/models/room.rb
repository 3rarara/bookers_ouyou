class Room < ApplicationRecord

  has_many :user_room
  has_many :chats

end
