class AddColumnToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :codey_id, :integer
  end
end
