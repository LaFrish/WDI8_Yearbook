class CreateCodeys < ActiveRecord::Migration
  def change
    create_table :codeys do |t|
      t.string :name
      t.string :award
      t.integer :student_id, index: true, foreign_key: true
    end
  end
end
