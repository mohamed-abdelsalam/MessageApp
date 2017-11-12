class CreateClients < ActiveRecord::Migration[5.1]
  def change
    create_table :clients, id: false do |t|
      t.string :clientName
      t.string :clientType
      t.primary_key :clientId

      t.timestamps
    end
  end
end
