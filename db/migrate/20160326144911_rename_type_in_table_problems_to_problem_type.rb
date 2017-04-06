class RenameTypeInTableProblemsToProblemType < ActiveRecord::Migration
  def change
    rename_column :problems, :type, :problem_type 
  end
end
