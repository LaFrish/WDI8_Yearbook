class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :title
      t.string :body
      t.integer :student_id, index: true, foreign_key: true
      t.integer :instructor_id, index: true, foreign_key: true
    end
  end
end
