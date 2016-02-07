class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name

      #This will add two columns 'profile_id' 'profile_type'
      t.references :profile, polymorphic: true, index: true

      t.timestamps

    end
  end
end
