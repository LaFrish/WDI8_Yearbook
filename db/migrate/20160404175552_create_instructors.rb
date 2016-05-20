class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :img_url
      t.string :squad_name
      t.string :quote
      t.string :teaching
      t.string :memory
      t.string :favlang
      t.string :wisewords
      t.string :email
      t.string :password
      t.integer :squad_id, index: true, foreign_key: true
      t.integer :user_id, index: true, foreign_key: true
      t.integer :wdier_id, index: true, foreign_key: true
    end
  end
end
