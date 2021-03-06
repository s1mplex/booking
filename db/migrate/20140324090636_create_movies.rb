class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :title
      t.text :description
      t.string :cover_url
      t.integer :duration

      t.timestamps
    end
  end
end
