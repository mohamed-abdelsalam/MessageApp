class AddEncrypPasswordToClients < ActiveRecord::Migration[5.1]
  def change
    add_column :clients, :encyrpt_password, :string
    add_column :clients, :salt, :string
  end
end
