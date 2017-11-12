class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.numeric :senderId
      t.numeric :receiverId
      t.string :messageText
      t.datetime :sendTime

      t.timestamps
    end
  end
end
