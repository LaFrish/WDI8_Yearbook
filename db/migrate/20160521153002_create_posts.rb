class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :name
      t.string :body
      t.integer :wdier_id, index: true, foreign_key: true
    end
  end
end
