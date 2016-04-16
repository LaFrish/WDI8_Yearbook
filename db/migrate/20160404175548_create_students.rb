class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
        t.string :name
        t.string :img_url
        t.string :github_url , null: false
        t.string :portfolio_url, null: false
        t.string :project1_url, null: false
        t.string :project2_url, null: false
        t.string :project3_url, null: false
        t.string :project4_url, null: false
        t.string :quote
        t.integer :instructor_id, index: true, foreign_key: true
        t.integer :squad_id, index: true, foreign_key: true
        t.integer :codey_id, index: true, foreign_key: true
    end
  end
end
