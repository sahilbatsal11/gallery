class CreateAlbums < ActiveRecord::Migration[6.1]
  def change
    create_table :albums do |t|
      t.string :name
      t.text :description
      t.references :user

      t.timestamps
    end
  end
end
