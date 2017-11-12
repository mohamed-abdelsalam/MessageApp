class Message < ApplicationRecord
  validates :sender_name, :receiver_name, :message_text, :send_time, presence: true
end
