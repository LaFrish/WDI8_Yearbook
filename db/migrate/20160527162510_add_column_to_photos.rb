class AddColumnToPhotos < ActiveRecord::Migration
  def change
    add_column :photos , :tagging, :string
    add_column :photos , :tag, :string
    add_column :photos , :tag_list, :string
  end
end
