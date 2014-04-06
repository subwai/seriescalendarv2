class CreateShows < ActiveRecord::Migration
  def change
    create_table :shows do |t|
      t.string :title
      t.text :overview
      t.integer :runtime
      t.string :air_day_utc
      t.string :air_time_utc
      t.string :imdb_id
      t.string :poster
    end
  end
end
