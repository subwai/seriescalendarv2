class AddTvdbIdToShows < ActiveRecord::Migration
  def change
    add_column :shows, :tvdb_id, :integer
    add_index :shows, :tvdb_id, :unique => true
  end
end
