class CreateInstructors < ActiveRecord::Migration
  def change
    create_table :instructors do |t|
      t.string :name
      t.string :img_url, null: false
      t.string :squad_name, null: false
      t.integer :squad_id, index: true, foreign_key: true, null: false
      t.integer :codey_id, index: true, foreign_key: true, null: false
    end
  end
end
