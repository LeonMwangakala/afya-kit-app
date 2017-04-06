class AddAssociationToProblems < ActiveRecord::Migration
  def change
    add_reference :problems, :patient, index: true
  end
end
