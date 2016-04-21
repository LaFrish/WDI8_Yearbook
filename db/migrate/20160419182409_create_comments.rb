class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author
      t.string :title
      t.string :body
      t.references :photo, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.references :instructor, index: true, foreign_key: true
    end
  end
end
