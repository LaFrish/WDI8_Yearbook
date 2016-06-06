class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :wdier_id, :integer, index: true, foreign_key: true
  end
end
