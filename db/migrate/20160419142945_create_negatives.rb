class CreateNegatives < ActiveRecord::Migration
  def change
    create_table :negatives do |t|
      t.references :photo, index: true, foreign_key: true
      t.references :student, index: true, foreign_key: true
      t.references :instructor, index: true, foreign_key: true
    end
  end
end
