class AddColumnToTaggings < ActiveRecord::Migration
  def change
    add_column :taggings , :photo_id, :integer

  end
end
