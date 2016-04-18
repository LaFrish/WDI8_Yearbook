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
        t.integer :instructor_id, index: true, foreign_key: true
        t.integer :squad_id, index: true, foreign_key: true
        t.integer :codey_id, index: true, foreign_key: true
    end
  end
end
