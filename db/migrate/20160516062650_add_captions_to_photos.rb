class AddCaptionsToPhotos < ActiveRecord::Migration
  def change
    add_column :photos, :caption, :string,  foreign_key: NULL
  end
end
