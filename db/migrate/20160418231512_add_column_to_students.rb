class AddColumnToStudents < ActiveRecord::Migration
  def change
    add_column :students, :codey_id, :string
    add_column :students, :q1, :string
    add_column :students, :q2, :string
    add_column :students, :q3, :string
    add_column :students, :q4, :string
    add_column :students, :fb, :string
    add_column :students, :linkedin, :string
    add_column :students, :email, :string
  end
end
