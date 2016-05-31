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
      t.string :teaching
      t.string :memory
      t.string :favlang
      t.string :wisewords
      t.string :tag_list
      t.string :q1
      t.string :q2
      t.string :q3
      t.string :fb
      t.string :linkedin
      t.string :email
      t.string :role
      t.string :password
      t.integer :squad_id, index: true, foreign_key: true
      t.integer :codey_id, index: true, foreign_key: true
      t.integer :student_id, index: true, foreign_key: true
      t.integer :instructor_id, index: true, foreign_key: true
    end
  end
end
