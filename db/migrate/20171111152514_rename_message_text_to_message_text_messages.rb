class RenameMessageTextToMessageTextMessages < ActiveRecord::Migration[5.1]
  def change
    rename_column :messages, :messageText, :message_text
  end
end
