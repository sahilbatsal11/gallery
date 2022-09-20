class AddImageToAlbums < ActiveRecord::Migration[6.1]
  def change
    add_column :albums, :image, :string
  end
end
