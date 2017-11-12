class RenameIdsToNameClients < ActiveRecord::Migration[5.1]
  def change
    rename_column :clients, :clientName, :client_name
    rename_column :clients, :clientType, :client_type
    remove_column :clients, :clientId 
  end
end
