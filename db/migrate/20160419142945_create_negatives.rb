class CreateNegatives < ActiveRecord::Migration
  def change
    create_table :negatives do |t|
      t.references :photo, index: true, foreign_key: false
      t.references :instructor, index: true, foreign_key: false
      t.references :student, index: true, foreign_key: false
      t.references :user, index: true, foreign_key: false
      t.references :wdier, index: true, foreign_key: false
    end
  end
end
