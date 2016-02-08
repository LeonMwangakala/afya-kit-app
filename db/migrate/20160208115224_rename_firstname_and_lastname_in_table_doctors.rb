class RenameFirstnameAndLastnameInTableDoctors < ActiveRecord::Migration
  def change
    rename_column :doctors, :firstname, :first_name
    rename_column :doctors, :lastname, :last_name
  end
end
