class AddColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :codey_id, :integer
  end
end
