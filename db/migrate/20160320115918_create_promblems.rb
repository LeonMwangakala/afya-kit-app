class CreatePromblems < ActiveRecord::Migration
  def change
    create_table :promblems do |t|
      t.string :condition
      t.string :issue_name
      t.string :type
      t.string :start_date
      t.string :comment
      t.timestamps
    end
  end
end
