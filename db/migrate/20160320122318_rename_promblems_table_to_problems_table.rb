class RenamePromblemsTableToProblemsTable < ActiveRecord::Migration
  def change
    rename_table :promblems, :problems
  end
end
