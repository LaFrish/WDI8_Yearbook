class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :img_url, :string
    add_column :users, :github_url, :string
    add_column :users, :portfolio_url, :string
    add_column :users, :project1_url, :string
    add_column :users, :project2_url, :string
    add_column :users, :project3_url, :string
    add_column :users, :quote, :string
    add_column :users, :squad_name, :string
    add_column :users, :teaching, :string
    add_column :users, :memory, :string
    add_column :users, :favlang, :string
    add_column :users, :wisewords, :string
    add_column :users, :tag_list, :string
    add_column :users, :q1, :string
    add_column :users, :q2, :string
    add_column :users, :q3, :string
    add_column :users, :fb, :string
    add_column :users, :linkedin, :string
    add_column :users, :squad_id, :integer, index: true, foreign_key: true
    add_column :users, :student_id, :integer, index: true, foreign_key: true
    add_column :users, :instructor_id, :integer, index: true, foreign_key: true
  end
end
