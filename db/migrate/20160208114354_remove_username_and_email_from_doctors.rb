class RemoveUsernameAndEmailFromDoctors < ActiveRecord::Migration
  def change
    remove_column :doctors, :username, :string
    remove_column :doctors, :email, :string
  end
end
