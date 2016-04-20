class CreateCodeys < ActiveRecord::Migration
  def change
    create_table :codeys do |t|
      t.string :name
      t.string :award, null: false
      t.integer :student_id, index: true, foreign_key: true, null: false
    end
  end
end
