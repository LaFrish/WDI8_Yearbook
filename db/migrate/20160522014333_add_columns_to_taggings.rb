class AddColumnsToTaggings < ActiveRecord::Migration
  def change
    t.belongs_to :tag, index: true, foreign_key: true
    t.belongs_to :photo, index: true, foreign_key: true

    t.timestamps null: false
  end
end
