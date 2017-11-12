class RenamePasswordColumn < ActiveRecord::Migration[5.1]
  def change
    rename_column :clients, :encyrpt_password, :password_digest
    remove_column :clients, :salt
  end
end
