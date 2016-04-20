class AddColumnsToInstructors < ActiveRecord::Migration
  def change
    add_column :instructors, :quote, :string
    add_column :instructors, :teaching, :integer
    add_column :instructors, :memory, :string
    add_column :instructors, :favlang, :string
    add_column :instructors, :wisewords, :string
  end
end
