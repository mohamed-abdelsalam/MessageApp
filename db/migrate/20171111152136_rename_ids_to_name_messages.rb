class RenameIdsToNameMessages < ActiveRecord::Migration[5.1]
  def change
    rename_column :messages, :senderId, :sender_name
    rename_column :messages, :receiverId, :receiver_name
    rename_column :messages, :sendTime, :send_time
    change_column :messages, :sender_name, :string
    change_column :messages, :receiver_name, :string
  end
end
