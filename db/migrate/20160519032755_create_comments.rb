class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :body
      t.references :wdier, index: true, foreign_key: true
    end
  end
end
