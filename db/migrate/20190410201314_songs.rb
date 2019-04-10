class Songs < ActiveRecord::Migration[5.0]
  def change
    create_table :songs do |t|
      t.string :name
      t.references :artist
      t.references :genre
    end
  end
end
