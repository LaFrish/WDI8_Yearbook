class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :img_url
      t.string :caption
    end
  end
end
