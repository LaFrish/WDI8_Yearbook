class CreateWdiers < ActiveRecord::Migration
  def change
    create_table :wdiers do |t|
      t.string :name
      t.string :img_url
      t.string :github_url
      t.string :portfolio_url
      t.string :project1_url
      t.string :project2_url
      t.string :project3_url
      t.string :quote
      t.string :squad_name
      t.integer :teaching
      t.integer :memory
      t.integer :favlang
      t.integer :wisewords
      t.integer :tag_list
      t.integer :q1
      t.integer :q2
      t.integer :q3
      t.integer :fb
      t.integer :linkedin
      t.integer :email
      t.integer :role
      t.integer :password
      t.integer :squad_id, index: true, foreign_key: true
      t.integer :codey_id, index: true, foreign_key: true
      t.integer :student_id, index: true, foreign_key: true
      t.integer :instructor_id, index: true, foreign_key: true
    end
  end
end
