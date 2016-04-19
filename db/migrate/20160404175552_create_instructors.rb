class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :img_url
      t.string :squad_name
      t.integer :squad_id, index: true, foreign_key: true
      t.integer :codey_id, index: true, foreign_key: true
    end
  end
end
