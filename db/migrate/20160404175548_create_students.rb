class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
        t.string :name
        t.string :img_url
        t.string :github_url
        t.string :portfolio_url
        t.string :project1_url
        t.string :project2_url
        t.string :project3_url
        t.string :project4_url
        t.string :quote
        t.string :q1
        t.string :q2
        t.string :q3
        t.string :q4
        t.string :fb
        t.string :linkedin
        t.string :email
        t.string :password
        t.integer :instructor_id, index: true, foreign_key: true
        t.integer :squad_id, index: true, foreign_key: true
        t.integer :user_id, index: true, foreign_key: true
        t.integer :wdier_id, index: true, foreign_key: true
    end
  end
end
