class CreatePhotos < ActiveRecord::Migration[6.1]
  def change
    create_table :photos do |t|
      t.references :user, null: false
      t.references :album, null: false
      t.string :image
      t.string :name

      t.timestamps
    end
  end
end
